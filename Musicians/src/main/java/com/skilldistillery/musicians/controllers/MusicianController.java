package com.skilldistillery.musicians.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.musicians.data.MusicianDAO;

@Controller
public class MusicianController {
	
	@Autowired
	private MusicianDAO dao;
	
	@RequestMapping(path = {"/", "index.do" })
	public String home(Model model) {
		
		model.addAttribute("musicians", dao.findALL());
		return "index";
	}

}
