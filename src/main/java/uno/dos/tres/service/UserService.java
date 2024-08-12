package uno.dos.tres.service;

import uno.dos.tres.beans.AuthInfo;
import uno.dos.tres.beans.User;
import uno.dos.tres.dao.DaoException;

public interface UserService {

    void addUser(User user) throws ServiceException;
    void updateUser(User user) throws ServiceException;
    void deleteUser(int id) throws ServiceException;
    User signIn(AuthInfo info) throws ServiceException;
    boolean checkUserCopy(User user) throws ServiceException;
    User checkToken(String token) throws ServiceException;

}
