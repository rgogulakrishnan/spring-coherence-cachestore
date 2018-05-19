package com.gog.dao;

import com.gog.domain.Employee;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeRowMapper implements RowMapper<Employee> {

    @Override
    public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
        System.out.println("In resultset ====> " + rs);
        Employee employee = new Employee();
        employee.setEmployeeId(rs.getInt("employeeId"));
        employee.setFirstName(rs.getString("firstname"));
        employee.setLastName(rs.getString("lastname"));
        employee.setDob(rs.getObject("dob").toString());
        employee.setExperience(rs.getInt("experience"));
        employee.setMobileNumber(rs.getObject("mobilenumber").toString());
        employee.setEmail(rs.getString("email"));
        return employee;
    }
}
