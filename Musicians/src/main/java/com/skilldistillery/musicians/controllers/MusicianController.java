package com.skilldistillery.musicians.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.musicians.data.MusicianDAO;
import com.skilldistillery.musicians.entities.Musician;

@Controller
public class MusicianController {
	
	@Autowired
	private MusicianDAO dao;
	
	@GetMapping(path = {"/", "index.do" })
	public String home(Model model) {
		
		model.addAttribute("musicians", dao.findALL());
		return "index";
	}
	
	@PostMapping(path = "delete.do")
	public String delete(@RequestParam("id") int id, RedirectAttributes redir) {
		
		dao.deleteById(id);
		
		redir.addAttribute("message", "Deletion Successful");
		
		return "redirect:success.do";
	}
	
	
	@GetMapping(path="success.do")
	public String success(@RequestParam("message") String message, Model model) {
		
		model.addAttribute("message", message);
		return "success";
	}
	
	
	
	
	
	@GetMapping(path ="display.do")
	public String display(@RequestParam("id") int id, Model model) {
		
		model.addAttribute("musician", dao.findByID(id));
		return "display";
	}
	
	
	@RequestMapping(path="createView.do")
	public String createView(Model model) {
		
		return "create";
	}

	@PostMapping(path="create.do", 
			params={ "name", "genre", "home", "active", "about" })
	public String create(String name, String genre, String home, boolean active, String about, RedirectAttributes redir) {
		Musician created = new Musician();
		created.setName(name);
		created.setGenre(genre);
		created.setHome(home);
		created.setActive(active);
		created.setAbout(about);
		
		dao.create(created);
		
		redir.addAttribute("id", created.getId());
		return "redirect:display.do";
	}
	
	@GetMapping(path="updateView.do")
	public String updateView(@RequestParam("id") int id, Model model) {
		Musician musician = dao.findByID(id);
		
		model.addAttribute("musician", musician);
		return "update";
	}
	
	@PostMapping(path="update.do", 
			params= { "id", "name", "genre", "home", "imageUrl", "active", "about" } )
	public String update(int id, String name, String genre, String home, String imageUrl, boolean active, String about, RedirectAttributes redir) {
		
		Musician update = new Musician();
		update.setName(name);
		update.setGenre(genre);
		update.setHome(home);
		update.setActive(active);
		update.setAbout(about);
		update.setImageUrl(imageUrl);
		
		dao.update(id, update);
		
		redir.addAttribute("id", id);
		return "redirect:display.do";
	}
	
	
	@GetMapping(path="search.do")
	public String search(@RequestParam("keyword") String keyword, Model model) {
		
		List<Musician> musicians = dao.findByKeyword(keyword);
		
		model.addAttribute("musicians", musicians);
		return "search";
	}
	
	
}
