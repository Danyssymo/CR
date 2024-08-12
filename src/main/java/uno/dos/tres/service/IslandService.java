package uno.dos.tres.service;

import uno.dos.tres.beans.Country;
import uno.dos.tres.beans.Island;

import java.util.Set;

public interface IslandService {

    Set<Country> findAllCountries() throws ServiceException;

    void addIsland(Island island) throws ServiceException;
}
