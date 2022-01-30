
package Controller;

import DAO.CamereDao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Camere;
import DAOImpl.CamereDaoImpl;

/**
 *
 * @author vali
 */
public class CamereController extends HttpServlet {

	Camere camera = new Camere();
	CamereDaoImpl cameraDaoImpl = new CamereDaoImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer Confort = 0;
		Integer NrPers = 0 ;
		Float Pret = 0.0f;
		Integer Numar = 0;
		
		if (request.getParameter("adaugaCamere") != null) {
			
			if(request.getParameter("numar") != "") {
			 Numar = java.lang.Integer.parseInt(request.getParameter("numar"));
			}
			if(request.getParameter("pret") != "") {
			 Pret = java.lang.Float.parseFloat(request.getParameter("pret"));
			}
			if(request.getParameter("nrPers") != "") {
			 NrPers =java.lang.Integer.parseInt(request.getParameter("nrPers"));
			}
			if(request.getParameter("confort") != "") {
			 Confort =java.lang.Integer.parseInt(request.getParameter("confort"));
			}
			
			camera.setNumar(Numar);
			camera.setPret(Pret);
			camera.setNrPers(NrPers);
			camera.setConfort(Confort);
			
			if(Numar != 0 && Pret != 0.0f && NrPers != 0 && Confort != 0  )
			cameraDaoImpl.adaugaCamere(camera);
			
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Camera.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("afiseazaCamere") != null) {
			List<Camere> listaCamere = new ArrayList();
			listaCamere = cameraDaoImpl.afiseazaCamere();
			request.setAttribute("listaCamere", listaCamere);
			RequestDispatcher rd = request.getRequestDispatcher("tabela_Camera.jsp");
			rd.forward(request, response);
		}

		if (request.getParameter("modificaCamere") != null) {
			Long id1 = Long.parseLong(request.getParameter("idcamere"));
			
			Integer Numar = java.lang.Integer.parseInt(request.getParameter("Numar"));
			Float Pret = java.lang.Float.parseFloat(request.getParameter("Pret"));
			Integer NrPers =java.lang.Integer.parseInt(request.getParameter("NrPers"));
			Integer Confort =java.lang.Integer.parseInt(request.getParameter("Confort"));
			
			cameraDaoImpl.modificaCamere(id1, Numar, Pret, NrPers,Confort);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Camera.jsp");
			rd.forward(request, response);

		}

		if (request.getParameter("stergeCamera") != null) {
			Long id2 = Long.parseLong(request.getParameter("idcamere"));
			camera.setIdcamere(id2);
			cameraDaoImpl.stergeCamera(camera);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Camera.jsp");
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


