package com.gog.store;

import com.gog.dao.EmployeeRowMapper;
import com.gog.domain.Employee;
import com.tangosol.net.cache.AbstractCacheStore;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import java.util.LinkedHashMap;
import java.util.Map;

public class EmployeeStore extends AbstractCacheStore {

    private String cacheName;
    private NamedParameterJdbcTemplate namedParamJdbcTemplate;

    public EmployeeStore(String cacheName) {
        this.cacheName = cacheName;
    }

    @Override
    public Object load(Object key) {

        String sql = "select id, employeeid, firstname, lastname, dob, experience, mobilenumber, email " +
                "from employee where employeeid = :empId";
        Map<String, Object> namedParam = new LinkedHashMap<String, Object>();
        namedParam.put("empId", Integer.valueOf(((EmployeeKey)key).getEmployeeId()));
        System.out.println("In Store ====> " + namedParamJdbcTemplate);

        Employee emp = namedParamJdbcTemplate.queryForObject(sql, namedParam, new EmployeeRowMapper());
        System.out.println("In Store Employee ====> " + emp);
        return emp;
    }

    @Override
    public void store(Object key, Object value) {

        super.store(key, value);
    }

    @Override
    public void erase(Object key) {
        super.erase(key);
    }

    public NamedParameterJdbcTemplate getNamedParamJdbcTemplate() {
        return namedParamJdbcTemplate;
    }

    public void setNamedParamJdbcTemplate(NamedParameterJdbcTemplate namedParamJdbcTemplate) {
        this.namedParamJdbcTemplate = namedParamJdbcTemplate;
    }
}
