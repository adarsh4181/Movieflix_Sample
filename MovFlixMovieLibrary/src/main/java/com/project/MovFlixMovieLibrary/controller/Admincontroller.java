package com.project.MovFlixMovieLibrary.controller;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.MovFlixMovieLibrary.dao.AdminDao;
import com.project.MovFlixMovieLibrary.dao.MovieDao;
import com.project.MovFlixMovieLibrary.entity.Admin;
import com.project.MovFlixMovieLibrary.entity.Movie;

@RestController
public class Admincontroller {
	

	@Autowired
	private MovieDao dao;
	
	@Autowired
	private AdminDao dao1;
	
	@GetMapping("/login")
	public ModelAndView startPage() {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	@PostMapping("/checklogin")
	public ModelAndView startPage(Admin a) {
		ModelAndView mv = new ModelAndView("admin");
		Optional<Admin> finding = dao1.findById(a.getEmail());
		Boolean b = finding.isPresent();
		mv.addObject("b", b);
		return mv;
	}
	@GetMapping("/add")
	public ModelAndView displayPage() {
		ModelAndView mv = new ModelAndView("add");
		return mv;
	}
	@PostMapping("/success")
	public ModelAndView successPage() {
		ModelAndView mv = new ModelAndView("success");
		return mv;
	}
	@PostMapping("/add")
	public ModelAndView addingMovie(Movie m) {
		ModelAndView mv = new ModelAndView("add");
		 dao.save(m);
		//mv.addObject("msg", "Movie Added");
		return mv;
	}
	@GetMapping("/modify")
	public ModelAndView modifyPage() {
		ModelAndView mv = new ModelAndView("modify");
		return mv;
	}

}
