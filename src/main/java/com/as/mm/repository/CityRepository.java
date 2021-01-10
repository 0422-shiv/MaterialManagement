package com.as.mm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.as.mm.model.City;

public interface CityRepository  extends JpaRepository<City,Integer> {

	@Query("FROM City WHERE statename=?1")
	List<City> findCityByState(String statename);
	
}
