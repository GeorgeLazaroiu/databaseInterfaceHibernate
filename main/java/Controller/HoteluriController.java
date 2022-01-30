package Controller;

import DAO.HoteluriDao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Hoteluri;
import DAOImpl.HoteluriDaoImpl;

/**
 *
 * @author vali
 */
public class HoteluriController extends HttpServlet {

	Hoteluri hotel = new Hoteluri();
	HoteluriDaoImpl hotelDaoImpl = new HoteluriDaoImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if (request.getParameter("adaugaHoteluri") != null) {
			
			String Nume = request.getParameter("nume");
			String Adresa = request.getParameter("adresa");
			String Tara = request.getParameter("tara");
			Integer Stele = 0;
			if(request.getParameter("stele") != "") {
				 Stele = Integer.parseInt(request.getParameter("stele"));
				}
			Float Recenzii = 0.0f;
			if(request.getParameter("recenzii") != "") {
				  Recenzii = Float.parseFloat(request.getParameter("recenzii"));
				}
			String NrPhone = request.getParameter("nrPhone");
			
			hotel.setNume(Nume);
			hotel.setAdresa(Adresa);
			hotel.setTara(Tara);
			hotel.setStele(Stele);
			hotel.setRecenzii(Recenzii);
			hotel.setNrPhone(NrPhone);
	        
			if(Nume != "" &&  Adresa != "" && Tara != "" && Stele != 0 && Recenzii != 0.0f  && NrPhone != "")
			{
			hotelDaoImpl.adaugaHoteluri(hotel);
			}
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Hotel.jsp");
			rd.forward(request, response);
			
			}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if (request.getParameter("afiseazaHoteluri") != null) {
			
			List<Hoteluri> listaHoteluri = new ArrayList();
			listaHoteluri = hotelDaoImpl.afiseazaHoteluri();
			
			request.setAttribute("listaHoteluri", listaHoteluri);
			
			RequestDispatcher rd = request.getRequestDispatcher("tabela_Hotel.jsp");
			rd.forward(request, response);
		}

		if (request.getParameter("modificaHoteluri") != null) {
			
			Long id1 = Long.parseLong(request.getParameter("idhoteluri"));
			
			String Nume = request.getParameter("nume");
			String Adresa = request.getParameter("adresa");
			String Tara = request.getParameter("tara");
			Integer Stele = Integer.parseInt(request.getParameter("stele"));
			Float Recenzii = Float.parseFloat(request.getParameter("recenzii"));
			String NrPhone = request.getParameter("nrPhone");
			
			hotelDaoImpl.modificaHoteluri(id1, Nume, Adresa, Tara,Stele,Recenzii, NrPhone);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Hotel.jsp");
			rd.forward(request, response);

		}

		if (request.getParameter("stergeHotel") != null) {
			Long id2 = Long.parseLong(request.getParameter("idhoteluri"));
			hotel.setIdhoteluri(id2);
			
			hotelDaoImpl.stergeHotel(hotel);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Hotel.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}


