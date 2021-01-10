package com.as.mm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.as.mm.model.Purchase;

public interface PurchaseRepository extends JpaRepository<Purchase,Integer>{

}
