package com.gog.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.gog.domain.Employee;

@SuppressWarnings("unchecked")
public class EmployeeDao {

	private NamedParameterJdbcTemplate namedParamJdbcTemplate;
	
	public List<Employee> getAllEmployees() {

		String sql = "select id, employeeid, firstname, lastname, dob, experience, mobilenumber, email from employee";
		List<Employee> employees = namedParamJdbcTemplate.query(sql, new EmployeeRowMapper());
		return employees;
	}
	
	public NamedParameterJdbcTemplate getNamedParamJdbcTemplate() {
		return namedParamJdbcTemplate;
	}

	public void setNamedParamJdbcTemplate(NamedParameterJdbcTemplate namedParamJdbcTemplate) {
		this.namedParamJdbcTemplate = namedParamJdbcTemplate;
	}
}
