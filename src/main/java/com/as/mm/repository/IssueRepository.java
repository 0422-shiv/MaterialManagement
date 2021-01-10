package com.as.mm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.as.mm.model.Issue;

public interface IssueRepository extends JpaRepository<Issue,Integer>{

}
