package com.project.MovFlixMovieLibrary.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="movie_table")
public class Movie {
	
	@Id
	@Column(length = 20)
	//@Size(min = 3, max = 15)
	private String movieID;
	@Column
	private String movieName;
	

	@Column
	private int collection;
	
	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Movie(String movieID, String movieName, int collection) {
		super();
		this.movieID = movieID;
		this.movieName = movieName;
		this.collection = collection;
	}

	public String getMovieID() {
		return movieID;
	}

	public void setMovieID(String movieID) {
		this.movieID = movieID;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public int getCollection() {
		return collection;
	}

	public void setCollection(int collection) {
		this.collection = collection;
	} 
	
	@Override
	public String toString() {
		return "Movie [movieID=" + movieID + ", movieName=" + movieName + ", collection=" + collection + "]";
	}
	
	
	
	

}
