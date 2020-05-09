package com.lilJade.Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.lilJade.model.TbUsuariop;

public class usuarioDao {

	public List<TbUsuariop> logInUser(TbUsuariop u){
		List<TbUsuariop> user = new ArrayList();
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("PracticaLogIn");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			user = em.createQuery("from TbUsuariop as u where u.usuario='"+u.getUsuario()+"' and u.contrasenia='"+u.getContrasenia()+"'").getResultList();
			em.getTransaction().commit();
			
			for(TbUsuariop datoId:user) {
				u.setIdUsuarios(datoId.getIdUsuarios());
			}
			
		} catch (Exception e) {
			System.out.println("Error: " + e);
		}
		
		return user;
	}
}
