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
import pojo.Rezervare;
import DAO.RezervareDao;
import java.util.Date;
import pojo.Hoteluri;
import pojo.Camere;


public class RezervareDaoImpl implements RezervareDao{

    public void adaugaRezervare(Rezervare rezervare) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(rezervare);
        transaction.commit();
        session.close();
    }

    public List<Rezervare> afiseazaRezervare() {
        List<Rezervare> listaRezervare = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From Rezervare");
        listaRezervare = query.list();
        return listaRezervare;
    }

    public void modificaRezervare(Long idrezervare, Hoteluri hoteluri, Camere camere, String Checkin, String Checkout) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Rezervare detaliirezervare;
        
        detaliirezervare = (Rezervare) session.load(Rezervare.class, idrezervare);
        detaliirezervare.setHoteluri(hoteluri);
        detaliirezervare.setCamere(camere);
        detaliirezervare.setCheckin(Checkin);
        detaliirezervare.setCheckout(Checkout);
        
        session.update(detaliirezervare);
        transaction.commit();
        session.close();
    }

    public void stergeRezervare (Rezervare rezervare) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(rezervare);
        transaction.commit();
        session.close();
    }
}
