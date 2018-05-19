package com.gog.dao;

import com.tangosol.net.CacheFactory;
import com.tangosol.net.NamedCache;
import com.tangosol.util.ValueExtractor;
import com.tangosol.util.extractor.ChainedExtractor;
import com.tangosol.util.filter.EqualsFilter;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class GenericCoherenceDao<T, Key extends Serializable> {

    private String cacheName;
    private NamedCache namedCache;

    public String getCacheName() {
        return cacheName;
    }

    public void setCacheName(String cacheName) {
        this.cacheName = cacheName;
        setNamedCache();
    }

    public NamedCache getNamedCache() {
        return namedCache;
    }

    public void setNamedCache() {
        this.namedCache = CacheFactory.getCache(getCacheName());
    }

    public void create(Key key, T entity) {
        getNamedCache().put(key, entity);
    }

    public T read(Key key) {
        System.out.println("In DAO ====> " + key);
        System.out.println("Cache ====> " + getNamedCache());
        System.out.println("Value ====> " + getNamedCache().get(key));
        return (T) getNamedCache().get(key);
    }

    public void update(Key key, T entity) {
        getNamedCache().put(key, entity);
    }

    public void delete(Key key) {
        getNamedCache().remove(key);
    }

    public List<T> list() {
        ValueExtractor extractor = new ChainedExtractor("getClass.getName");
        Set keys = getNamedCache().keySet(new EqualsFilter(extractor, getCacheName()));
        return new ArrayList<T>(getNamedCache().getAll(keys).values());
    }
}
