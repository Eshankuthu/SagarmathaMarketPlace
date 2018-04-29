package com.sagarmatha.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sagarmatha.domain.Customer;
import com.sagarmatha.domain.Role;
import com.sagarmatha.domain.User;
import com.sagarmatha.repository.CustomerRepository;
import com.sagarmatha.service.CustomerService;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerRepository customerRepository;

	@Override
	public void addCustomer(Customer customer) {

		BCryptPasswordEncoder passworEncoder = new BCryptPasswordEncoder();
		User user = customer.getUser();
		user.setUserName(customer.getEmail());
		user.setRole(Role.Customer);
		user.setPassword(passworEncoder.encode(user.getPassword()));
		customerRepository.save(customer);
	}

}
