package com.skilldistillery.musicians.data;

import java.util.List;

import com.skilldistillery.musicians.entities.Musician;


public interface MusicianDAO {
	
	Musician findByID(int id) ;
	List<Musician> findALL();
	Musician create(Musician musician);
	Musician update(int id, Musician musician);
	boolean deleteById(int id);
	List<Musician> findByKeyword(String keyword) ;
	
	
}
