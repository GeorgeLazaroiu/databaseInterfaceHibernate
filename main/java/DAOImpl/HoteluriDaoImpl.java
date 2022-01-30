/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import org.hibernate.HibernateException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Hoteluri;
import DAO.HoteluriDao;


public class HoteluriDaoImpl implements HoteluriDao{

    public void adaugaHoteluri(Hoteluri hotel) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
			session.save(hotel);
			transaction.commit();
			
		} catch (HibernateException hibernateEx) {
		}
        session.close();
    }
    

    public List<Hoteluri> afiseazaHoteluri() {
        List<Hoteluri> listaHoteluri = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From Hoteluri");
        listaHoteluri = query.list();
        return listaHoteluri;
    }
    

    public void modificaHoteluri(Long idhoteluri,String Nume, String Adresa, String Tara,Integer Stele, Float Recenzii, String NrPhone) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        
        Hoteluri detaliihoteluri = (Hoteluri) session.load(Hoteluri.class, idhoteluri);
        
        detaliihoteluri.setNume(Nume);
        detaliihoteluri.setAdresa(Adresa);
        detaliihoteluri.setTara(Tara);
        detaliihoteluri.setStele(Stele);
        detaliihoteluri.setRecenzii(Recenzii);
        detaliihoteluri.setNrPhone(NrPhone);
        
        try {
        session.update(detaliihoteluri);
        transaction.commit();
        } catch (HibernateException hibernateEx) {
		}
        session.close();
    }

    public void stergeHotel(Hoteluri hotel) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(hotel);
        transaction.commit();
        session.close();
    }
}
