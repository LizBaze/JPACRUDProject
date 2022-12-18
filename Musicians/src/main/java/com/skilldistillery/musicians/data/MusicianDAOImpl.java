package com.skilldistillery.musicians.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.musicians.entities.Musician;

@Service
@Transactional
public class MusicianDAOImpl implements MusicianDAO {
	
	@PersistenceContext
	private EntityManager em;

	
	
	@Override
	public Musician findByID(int id) {
		
		return em.find(Musician.class, id);
		
	}
	
	@Override
	public List<Musician> findByKeyword(String keyword) {
		List<Musician> result = null;
		
		String query = "SELECT m FROM Musician m WHERE m.name LIKE :keyword OR m.about LIKE :keyword2"
				+ " OR m.genre LIKE :keyword3 ORDER BY m.name";
		result = em.createQuery(query, Musician.class)
				.setParameter("keyword", "%"+keyword+"%")
				.setParameter("keyword2", "%"+keyword+"%")
				.setParameter("keyword3", "%"+keyword+"%")
				.getResultList();
		
		return result;
	}
	

	@Override
	public List<Musician> findALL() {
		
		String query = "Select m FROM Musician m ORDER BY m.name";
		List<Musician> results = em.createQuery(query, Musician.class).getResultList();
		
		return results;
	}

	@Override
	public Musician create(Musician musician) {
		
		em.persist(musician);
		
		return musician;
	}

	@Override
	public Musician update(int id, Musician musician) {
		Musician updated = em.find(Musician.class, id);
		
		updated.setName(musician.getName());
		updated.setAbout(musician.getAbout());
		updated.setActive(musician.getActive());
		updated.setHome(musician.getHome());
		updated.setGenre(musician.getGenre());
		updated.setImageUrl(musician.getImageUrl());
		
		return updated;
	}

	@Override
	public boolean deleteById(int id) {
		
		
		Musician musician = em.find(Musician.class, id);
		
		em.remove(musician);
		
		
		
		return false;
	}

	@Override
	public List<Musician> findByGenre(String keyword) {
		String query = "SELECT m FROM Musician m WHERE m.genre LIKE :keyword";
		List<Musician> results = em.createQuery(query, Musician.class)
									.setParameter("keyword", "%" + keyword + "%")
									.getResultList();
				
				
				
		return results;
	}

}
