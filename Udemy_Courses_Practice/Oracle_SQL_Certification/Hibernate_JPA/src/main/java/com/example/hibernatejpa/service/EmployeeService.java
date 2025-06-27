package com.example.hibernatejpa.service;

import com.example.hibernatejpa.model.Employee;
import com.example.hibernatejpa.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }

    public Employee save(Employee emp) {
        return employeeRepository.save(emp);
    }
}
