package com.gog.web;

import java.util.ArrayList;
import java.util.List;

import com.gog.dao.GenericCoherenceDao;
import com.gog.store.EmployeeKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gog.dao.EmployeeDao;
import com.gog.domain.Employee;

@RestController
public class EmployeeController {
	
	@Autowired
	EmployeeDao employeeDao;

	@Autowired
	GenericCoherenceDao coherenceDao;
	
	@RequestMapping(value = "/employees-db", method = RequestMethod.GET)
	public List<Employee> getEmployeesFromDB() {
		return employeeDao.getAllEmployees();
	}

	@RequestMapping(value = "/employees-cache", method = RequestMethod.GET)
	public List<Employee> getEmployeesFromCache() {
		return coherenceDao.list();
	}

	@RequestMapping(value = "/employees-cache/{employeeId}", method = RequestMethod.GET)
	public Employee getEmployeeFromCache(@PathVariable int employeeId) {
		EmployeeKey key = new EmployeeKey();
		key.setEmployeeId(employeeId);
		return (Employee) coherenceDao.read(key);
	}
}
