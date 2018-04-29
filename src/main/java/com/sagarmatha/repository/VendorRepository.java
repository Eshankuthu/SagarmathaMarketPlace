package com.sagarmatha.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sagarmatha.domain.Vendor;

@Repository
public interface VendorRepository extends JpaRepository<Vendor, Long> {

	

}
