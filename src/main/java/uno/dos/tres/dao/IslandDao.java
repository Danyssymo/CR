package uno.dos.tres.dao;

import uno.dos.tres.beans.Country;
import uno.dos.tres.beans.Island;

import java.util.Set;

public interface IslandDao {

    Set<Country> fingAllCountries()throws DaoException;
    void addIsland(Island island)throws DaoException;

}
