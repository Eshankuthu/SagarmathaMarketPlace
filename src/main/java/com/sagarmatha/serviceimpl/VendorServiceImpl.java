package com.sagarmatha.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sagarmatha.domain.Role;
import com.sagarmatha.domain.User;
import com.sagarmatha.domain.Vendor;
import com.sagarmatha.repository.VendorRepository;
import com.sagarmatha.service.VendorService;

@Service
public class VendorServiceImpl implements VendorService {
	
	@Autowired
	VendorRepository vendorRepository;
	
	// Saves vendor in vendor table plus creates a record for vendor is User table.
	@Override
	public void saveVendor(Vendor vendor) {
		
		// Save in User table
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		User user = vendor.getUser();
		user.setUserName(vendor.getEmail());
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		user.setRole(Role.Vendor);
		
		vendorRepository.save(vendor);
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public Vendor findVendorById(Long Id) {
		
		return vendorRepository.findOne(Id);
	}

}
