/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sunset.model;

import br.com.sunset.dao.Devolutiva;
import br.com.sunset.model.exceptions.NonexistentEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Luuher
 */
public class DevolutivaJpaModel implements Serializable {

    public DevolutivaJpaModel(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Devolutiva devolutiva) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(devolutiva);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Devolutiva devolutiva) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            devolutiva = em.merge(devolutiva);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = devolutiva.getIdDevolucao();
                if (findDevolutiva(id) == null) {
                    throw new NonexistentEntityException("The devolutiva with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Devolutiva devolutiva;
            try {
                devolutiva = em.getReference(Devolutiva.class, id);
                devolutiva.getIdDevolucao();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The devolutiva with id " + id + " no longer exists.", enfe);
            }
            em.remove(devolutiva);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Devolutiva> findDevolutivaEntities() {
        return findDevolutivaEntities(true, -1, -1);
    }

    public List<Devolutiva> findDevolutivaEntities(int maxResults, int firstResult) {
        return findDevolutivaEntities(false, maxResults, firstResult);
    }

    private List<Devolutiva> findDevolutivaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Devolutiva.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Devolutiva findDevolutiva(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Devolutiva.class, id);
        } finally {
            em.close();
        }
    }

    public int getDevolutivaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Devolutiva> rt = cq.from(Devolutiva.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
