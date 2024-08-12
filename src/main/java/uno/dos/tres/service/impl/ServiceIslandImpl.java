package uno.dos.tres.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import uno.dos.tres.beans.Country;
import uno.dos.tres.beans.Island;
import uno.dos.tres.dao.DaoException;
import uno.dos.tres.dao.IslandDao;
import uno.dos.tres.service.IslandService;
import uno.dos.tres.service.ServiceException;

import java.util.Set;

@Service
public class ServiceIslandImpl implements IslandService {

    @Autowired
    private IslandDao islandDao;

    @Transactional
    @Override
    public Set<Country> findAllCountries() throws ServiceException {
        try {
            return islandDao.fingAllCountries();
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }
    @Transactional
    @Override
    public void addIsland(Island island) throws ServiceException {
        try {
            islandDao.addIsland(island);
        } catch (DaoException e) {
            throw new ServiceException(e);
        }
    }
}
