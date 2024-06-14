package com.property.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.property.model.pro;



@Repository
public interface proinfo extends JpaRepository<pro, Integer> {
	public pro findById(int id);
	 
	 @Query("SELECT p FROM pro p WHERE p.state LIKE %:state% AND p.city LIKE %:city% AND p.category LIKE %:category%")
	    List<pro> findByStateCityAndCategory(@Param("state") String state, @Param("city") String city, @Param("category") String category);
	
	  }
