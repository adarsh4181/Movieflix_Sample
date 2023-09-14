package com.project.MovFlixMovieLibrary.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.MovFlixMovieLibrary.entity.Movie;

public interface MovieDao extends JpaRepository<Movie, String> {
	
	@Query(nativeQuery = true,value="Select * from movie_table where lower(movie_name) like concat('%',lower(:movieName),'%')")
	List<Movie> findBymovieName(String movieName);
	@Query(nativeQuery = true,value="select * from movie_table where collection between :c1 AND :c2")
	List<Movie> findBycollections(int c1,int c2);

}
