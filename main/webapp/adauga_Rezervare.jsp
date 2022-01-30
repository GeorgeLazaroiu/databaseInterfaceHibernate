<%@page import="DAOImpl.HoteluriDaoImpl"%>
<%@page import="DAOImpl.CamereDaoImpl"%>
<%@page import="pojo.Camere"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Hoteluri"%>
<%@page import="java.util.List"%>
<%@page import="DAOImpl.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<title>Rezervare</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<%
		HoteluriDaoImpl hoteluriDAOImpl = new HoteluriDaoImpl();
        CamereDaoImpl camereDAOImpl = new CamereDaoImpl();
        
        List<Hoteluri> listaHoteluri = new ArrayList();
        listaHoteluri = hoteluriDAOImpl.afiseazaHoteluri();
        
        List<Camere> listaCamere = new ArrayList();
        listaCamere = camereDAOImpl.afiseazaCamere();
        request.setAttribute("listaHoteluri", listaHoteluri);
        request.setAttribute("listaCamere", listaCamere);
%>
	<div id="add">
		 <div class="container-fluid">
		<div class="row text-center">
			<div class="col-md-10 offset-1">
			<div class="alert alert-secondary" role="alert">
				<h1>Add a new rezervare</h1>
				<form action="RezervareController" method="GET">
					<div class="form-group">
						<label for="idrezervare">Please select the hotel:</label> <select
							id="idhoteluri" name="idhoteluri" class="form-control">
							<option selected>Choose...</option>
							<c:forEach items="${listaHoteluri}" var="hoteluri">
								<option value="${hoteluri.idhoteluri}">${hoteluri.idhoteluri},
												${hoteluri.nume}, ${hoteluri.stele}, ${hoteluri.recenzii}</option>
							</c:forEach>
						</select>

					</div>
					<div class="form-group">
						<label for="idcamere">Please select the camera:</label> <select
							id="idcamere" name="idcamere" class="form-control">
							<option selected>Choose...</option>
							<c:forEach items="${listaCamere}" var="camere">
								<option value="${camere.idcamere}">${camere.idcamere},
												${camere.numar}, ${camere.pret}</option>
							</c:forEach>
						</select>

					</div>
					<div class="form-group">
				    <label for="checkin">Date of check-in</label>
				    <input type="text" class="form-control" name="checkin"  placeholder="Enter check-in">
				  </div>
				  <div class="checkout">
				    <label for="confort">Date of check-out</label>
				    <input type="text" class="form-control" name="checkout"  placeholder="Enter check-out">
				  </div>
					<br> 
					<br> <br> <br> 
					
					
					
					<input type="submit"
						name="adaugaRezervare" value="Add" class="btn btn-warning"
						class="btn btn-primary" />



				</form>
					</div>
					</div>
					</div>

				<form action="RezervareController" method="POST">
					<p align="center">
						<input type="submit" name="afiseazaRezervare" value="Display"
							class="btn btn-info  btn-lg"> <br>
				</form>
				
				
				<br>
				<p align="center">
		<button type="button" onclick="location.href='index.html'" class="btn btn-success"><div >HomePage</div> </button>
	</p>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
	integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"
	integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG"
	crossorigin="anonymous"></script>
</html>
