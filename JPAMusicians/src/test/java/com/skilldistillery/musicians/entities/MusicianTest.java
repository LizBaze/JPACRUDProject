package com.skilldistillery.musicians.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class MusicianTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Musician musician;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAMusicians");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		musician = em.find(Musician.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		musician = null;
	}

	@Test
	void test_Musician_entity_mapping() {
		assertNotNull(musician);
		assertEquals("Watsky", musician.getName());
		assertEquals("Hip Hop", musician.getGenre());
	}

}
