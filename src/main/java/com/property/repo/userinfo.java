package com.property.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.property.model.user;

@Repository
public interface userinfo extends JpaRepository<user,Integer> {
	public user findByEmail(String email);

}
