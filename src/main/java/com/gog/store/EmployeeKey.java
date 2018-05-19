package com.gog.store;

import java.io.Serializable;

public class EmployeeKey implements Serializable {

    private int employeeId;

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public String toString() {
        return "EmployeeKey{" +
                "employeeId='" + employeeId + '\'' +
                '}';
    }
}
