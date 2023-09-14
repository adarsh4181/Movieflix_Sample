package com.project.MovFlixMovieLibrary.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.MovFlixMovieLibrary.dao.MovieDao;
import com.project.MovFlixMovieLibrary.entity.Movie;



@RestController
public class MovieController {
	
	@Autowired
	private MovieDao dao;
	

	@RequestMapping("/index")
	public ModelAndView startPage() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@GetMapping("/movieid")
	public ModelAndView searchById() {
		ModelAndView mv = new ModelAndView("movieid");
		return mv;
	}
	@GetMapping("/moviename")
	public ModelAndView searchByName() {
		ModelAndView mv = new ModelAndView("moviename");
		return mv;
	}
	@GetMapping("/getBymovieid")
	public ModelAndView searchById(@RequestParam("MovieID") String id) {
		Optional<Movie> findById = dao.findById(id);
		//System.out.println(findById.isPresent());
		Movie m = null;
		Boolean b = findById.isPresent();
		ModelAndView mv1 = new ModelAndView("moviedetails");
		if(b) {
			m = findById.get();
			mv1.addObject("m", m);
			mv1.addObject("msg",b);
		}
		mv1.addObject("searchtype","id");
		//mv.addObject("msg", "Employee Added");
		return mv1;
	}
	
	@GetMapping("/getBymoviename")
	public ModelAndView searchByName(@RequestParam("movieName") String name) {
		//Optional<Movie> findById = dao.findById(id);
		//System.out.println(findById.isPresent());
		List<Movie> l =dao.findBymovieName(name);
		System.out.println(l);
		//List<Movie> m = null;
		Boolean b = !(l.isEmpty());
		ModelAndView mv1 = new ModelAndView("moviedetails");
		if(b) {
			//m = l;
			mv1.addObject("m", l);
			mv1.addObject("msg",b);
		}
		mv1.addObject("searchtype","name");
		//mv.addObject("msg", "Employee Added");
		return mv1;
	}
	
	@GetMapping("/moviecol")
	public ModelAndView searchByCollections() {
		ModelAndView mv = new ModelAndView("moviecol");
		return mv;
	}
	
	@GetMapping("/getBymoviecol")
	public ModelAndView searchByCollection(@RequestParam("collectionmin") int c1,@RequestParam("collectionmax") int c2) {
		//System.out.println(l);
		System.out.println(c1+" "+c2);
		List<Movie> l =dao.findBycollections(c1, c2);
		System.out.println(l);
		Boolean b = !(l.isEmpty());
		ModelAndView mv1 = new ModelAndView("moviedetails");
		if(b) {
			mv1.addObject("m", l);
			mv1.addObject("msg",b);
		}
		mv1.addObject("searchtype","collections");
		return mv1;
	}

}
