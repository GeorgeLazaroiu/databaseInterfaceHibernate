    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import pojo.Hoteluri;

public interface HoteluriDao {
    public void adaugaHoteluri (Hoteluri hotel);
    public List<Hoteluri> afiseazaHoteluri();
    public void modificaHoteluri (Long idhoteluri,String Nume, String Adresa, String Tara,Integer Stele, Float Recenzii, String NrPhone);
    public void stergeHotel (Hoteluri hotel);
}

    
