/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Camere;
import DAO.CamereDao;

/**
 *
 * @author vali
 */
public class CamereDaoImpl implements CamereDao{

    public void adaugaCamere(Camere camera) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(camera);
        transaction.commit();
        session.close();
    }

    public List<Camere> afiseazaCamere() {
        List<Camere> listaCamere = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From Camere");
        listaCamere = query.list();
        return listaCamere;
    }

    public void modificaCamere(Long idcamere,Integer Numar, Float Pret, Integer NrPers, Integer Confort) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Camere detaliicamere = (Camere) session.load(Camere.class, idcamere);
        detaliicamere.setNumar(Numar);
        detaliicamere.setPret(Pret);
        detaliicamere.setNrPers(NrPers);
        detaliicamere.setConfort(Confort);
        
        
        session.update(detaliicamere);
        transaction.commit();
        session.close();
    }

    public void stergeCamera(Camere camera) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(camera);
        transaction.commit();
        session.close();
    }
}
