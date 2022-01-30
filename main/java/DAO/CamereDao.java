    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import pojo.Camere;

/**
 *
 * @author vali
 */
public interface CamereDao {
    public void adaugaCamere (Camere camera);
    public List<Camere> afiseazaCamere();
    public void modificaCamere (Long idcamere,Integer Numar, Float Pret, Integer NrPers, Integer Confort);
    public void stergeCamera (Camere camera);
}

    
