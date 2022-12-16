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
	public List<Musician> findALL() {
		
		String query = "Select m FROM Musician m";
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
