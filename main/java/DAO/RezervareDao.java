    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import pojo.Rezervare;
import pojo.Hoteluri;
import pojo.Camere;


public interface RezervareDao {
    public void adaugaRezervare (Rezervare rezervare);
    public List<Rezervare> afiseazaRezervare();
    public void modificaRezervare (Long idrezervare, Hoteluri hoteluri, Camere camere, String Checkin, String Checkout);
    public void stergeRezervare (Rezervare rezervare);
}

    
