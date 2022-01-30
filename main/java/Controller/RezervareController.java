package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Camere;
import pojo.Hoteluri;
import pojo.Rezervare;
import DAOImpl.RezervareDaoImpl;
import DAOImpl.HibernateUtil;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.hibernate.Session;


public class RezervareController extends HttpServlet {

	Rezervare rezervare = new Rezervare();
	RezervareDaoImpl rezervareDaoImpl = new RezervareDaoImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if (request.getParameter("adaugaRezervare") != null) {
			// preluarea parametrilor de interes
			
			Long idcamere = 0l;
			if(request.getParameter("idcamere") != "") {
			idcamere = java.lang.Long.parseLong(request.getParameter("idcamere"));
			}
			Long idhoteluri = 0l;
			if(request.getParameter("idhoteluri") != "") {
			idhoteluri = java.lang.Long.parseLong(request.getParameter("idhoteluri"));
			}
			
			Session session = HibernateUtil.getSessionFactory().openSession();
			
			Camere camera = (Camere) session.get(Camere.class, idcamere);
			Hoteluri hotel = (Hoteluri) session.get(Hoteluri.class, idhoteluri);

			String Checkin = request.getParameter("checkin");
			String Checkout = request.getParameter("checkout");

			rezervare.setCamere(camera);
			rezervare.setHoteluri(hotel);
			rezervare.setCheckin(Checkin);
			rezervare.setCheckout(Checkout);
			try {if( Checkin != "" && Checkout != "" && idcamere != 0l && idhoteluri != 0l) {
			rezervareDaoImpl.adaugaRezervare(rezervare);
			}}
			catch(Exception e) {
				
			}
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Rezervare.jsp");
			rd.forward(request, response);
		}
	}
	

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if (request.getParameter("afiseazaRezervare") != null) {
			List<Rezervare> listaRezervare = new ArrayList();
			listaRezervare = rezervareDaoImpl.afiseazaRezervare();
			request.setAttribute("listaRezervare", listaRezervare);
			
			RequestDispatcher rd = request.getRequestDispatcher("tabela_Rezervare.jsp");
			rd.forward(request, response);
		}

		if (request.getParameter("modificaRezervare") != null) {
			Long id1 = Long.parseLong(request.getParameter("idrezervare"));
			// preluarea parametrilor de interes
			
			Long idcamere = java.lang.Long.parseLong(request.getParameter("idcamere"));
			Long idhoteluri = java.lang.Long.parseLong(request.getParameter("idhoteluri"));
			
			Session session = HibernateUtil.getSessionFactory().openSession();
			
			Camere camera = (Camere) session.get(Camere.class, idcamere);
			Hoteluri hotel = (Hoteluri) session.get(Hoteluri.class, idhoteluri);


			String Checkin = request.getParameter("Checkin");
			String Checkout = request.getParameter("Checkout");

			rezervareDaoImpl.modificaRezervare(id1, hotel, camera, Checkin, Checkout);
			
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Rezervare.jsp");
			rd.forward(request, response);

		}

		if (request.getParameter("stergeRezervare") != null) {
			Long id2 = Long.parseLong(request.getParameter("idrezervare"));
			
			rezervare.setIdrezervare(id2);
			rezervareDaoImpl.stergeRezervare(rezervare);
			
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Rezervare.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}


