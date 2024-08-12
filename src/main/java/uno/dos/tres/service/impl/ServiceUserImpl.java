package uno.dos.tres.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;
import uno.dos.tres.beans.AuthInfo;
import uno.dos.tres.beans.User;
import uno.dos.tres.dao.DaoException;
import uno.dos.tres.dao.UserDao;
import uno.dos.tres.service.ServiceException;
import uno.dos.tres.service.UserService;

@Service
public class ServiceUserImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Transactional
    @Override
    public void addUser(User user) throws ServiceException {
        try {
            userDao.addUser(user);
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }

    @Transactional
    @Override
    public void updateUser(User user) throws ServiceException {
        try {
            userDao.updateUser(user);
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }

    @Transactional
    @Override
    public void deleteUser(int id) throws ServiceException {

    }

    @Transactional
    @Override
    public User signIn(AuthInfo info) throws ServiceException {
        try {
            return userDao.signIn(info);
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }

    @Transactional
    @Override
    public boolean checkUserCopy(User user) throws ServiceException {
        try {
            return userDao.checkUserCopy(user);
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }

    @Transactional
    @Override
    public User checkToken(String token) throws ServiceException {
        try {
            return userDao.checkToken(token);
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }

}
