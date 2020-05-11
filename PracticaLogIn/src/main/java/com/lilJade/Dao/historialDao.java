package com.lilJade.Dao;

import java.util.ArrayList;
import java.util.List;

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
	
	public List<Object> historial(){
		List<Object> history = new ArrayList<>();
		
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("PracticaLogIn");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			history = em.createQuery("SELECT h.idHistorial, u.nombre_usuario, h.fecha FROM TbHistorial AS h INNER JOIN TbUsuariop AS u ON u.idUsuarios = h.tbUsuariop.idUsuarios").getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error: " + e.getMessage());
		}
		
		return history;
	}
}
