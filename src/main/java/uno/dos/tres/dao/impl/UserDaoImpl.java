package uno.dos.tres.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import uno.dos.tres.beans.AuthInfo;
import uno.dos.tres.beans.Token;
import uno.dos.tres.beans.User;
import uno.dos.tres.dao.DaoException;
import uno.dos.tres.dao.UserDao;

import java.security.SecureRandom;
import java.util.Base64;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void addUser(User user) throws DaoException {

        Session session = sessionFactory.getCurrentSession();
        session.persist(user);
        session.flush();
        Token token = createToken();
        token.setUser(user);
        user.setToken(token);
        session.persist(user);

    }

    @Override
    public void updateUser(User user) throws DaoException {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
    }

    @Override
    public void deleteUser(int id) throws DaoException {

    }

    @Override
    public User signIn(AuthInfo info) throws DaoException {
        try {
            Session session = sessionFactory.getCurrentSession();
            String hql = "from User u where u.email = :email and u.password = :password";
            String email = info.getAuthUsername();
            String password = info.getAuthPassword();
            User user = session.createQuery(hql, User.class)
                    .setParameter("email", email)
                    .setParameter("password", password)
                    .getSingleResult();
            return user;
        } catch (jakarta.persistence.NoResultException e) {
            throw new DaoException(e);
        }
    }

    @Override
    public boolean checkUserCopy(User user) throws DaoException {
        Session session = sessionFactory.getCurrentSession();
        String hql = "SELECT COUNT(u) FROM User u WHERE u.email = :email";
        String email = user.getEmail();
        Long count = session.createQuery(hql, Long.class)
                .setParameter("email", email)
                .getSingleResult();
        return count > 0;
    }

    @Override
    public User checkToken(String token) throws DaoException {
        Session session = sessionFactory.getCurrentSession();
        Query<User> query = session.createQuery(
                "SELECT t.user FROM Token t WHERE t.token = :token", User.class);
        query.setParameter("token", token);

        User user = query.uniqueResult();
        if (user == null) {
            throw new IllegalArgumentException("User not found for token: " + token);
        }
        return user;

    }

    private Token createToken() throws DaoException {
        Token token = new Token();
        SecureRandom secureRandom = new SecureRandom();
        Base64.Encoder base64Encoder = Base64.getUrlEncoder();
        byte[] randomBytes = new byte[24];
        secureRandom.nextBytes(randomBytes);
        token.setToken(base64Encoder.encodeToString(randomBytes));
        return token;
    }
}
