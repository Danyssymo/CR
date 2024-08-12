package uno.dos.tres.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import uno.dos.tres.beans.Country;
import uno.dos.tres.beans.Island;
import uno.dos.tres.dao.DaoException;
import uno.dos.tres.dao.IslandDao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Repository
public class IslandDaoImpl implements IslandDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Set<Country> fingAllCountries() throws DaoException {
        Session session = sessionFactory.getCurrentSession();
        Query<Country> query = session.createQuery("from Country", Country.class);
        List<Country> countryList = query.getResultList();
        return new HashSet<>(countryList);
    }

    @Override
    public void addIsland(Island island) throws DaoException {
        Session session = sessionFactory.getCurrentSession();
        session.persist(island);
    }
}
