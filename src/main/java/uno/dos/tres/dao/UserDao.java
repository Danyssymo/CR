package uno.dos.tres.dao;

import uno.dos.tres.beans.AuthInfo;
import uno.dos.tres.beans.User;

public interface UserDao {

    void addUser(User user) throws DaoException;
    void updateUser(User user) throws DaoException;
    void deleteUser(int id) throws DaoException;
    User signIn(AuthInfo info) throws DaoException;
    boolean checkUserCopy(User user) throws DaoException;
    User checkToken(String token) throws DaoException;
}
