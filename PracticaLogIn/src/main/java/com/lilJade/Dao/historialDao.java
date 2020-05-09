package com.lilJade.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.lilJade.model.TbHistorial;

public class historialDao {

	public void registrarIngreso(TbHistorial tbh) {
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("PracticaLogIn");
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(tbh);
		em.flush();
		em.getTransaction().commit();
	}
}
