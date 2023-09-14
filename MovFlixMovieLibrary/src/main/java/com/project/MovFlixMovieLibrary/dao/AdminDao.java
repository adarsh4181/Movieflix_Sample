package com.project.MovFlixMovieLibrary.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.MovFlixMovieLibrary.entity.Admin;

public interface AdminDao extends JpaRepository<Admin, String> {

}
