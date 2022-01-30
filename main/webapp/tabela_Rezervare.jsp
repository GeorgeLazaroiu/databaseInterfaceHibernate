<%@page import="DAOImpl.CamereDaoImpl"%>
<%@page import="DAOImpl.HoteluriDaoImpl"%>
<%@page import="pojo.Camere"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Hoteluri"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <title>Rezervare</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#stergeRezervare").hide();
                $("#modificaRezervare").hide();

                $("#update").click(function () {
                    $("#modificaRezervare").show();
                    $("#stergeRezervare").hide();
                });
                $("#delete").click(function () {
                    $("#stergeRezervare").show();
                    $("#modificaRezervare").hide();
                });
            });
        </script>

    </head>
    <body>
        <%
        	HoteluriDaoImpl hoteluriDAOImpl = new HoteluriDaoImpl();
        	CamereDaoImpl camereDAOImpl = new CamereDaoImpl();
            
        	List<Hoteluri> listaHoteluri = new ArrayList();
        	listaHoteluri = hoteluriDAOImpl.afiseazaHoteluri();
            
            List <Camere> listaCamere = new ArrayList();
            listaCamere = camereDAOImpl.afiseazaCamere();
            
            request.setAttribute("listaHoteluri", listaHoteluri);
            request.setAttribute("listaCamere", listaCamere);
        %>
        <h1 align="center">Rezervare Table:</h1> 
       <div class="container-fluid">
		<div class="row text-center">
			<div class="col-md-10 offset-1">
				<table class="table table-dark table-striped">
            <thead>
    <tr>
      <th scope="col">Idrezervare</th>
      <th scope="col">NumeHotel</th>
      <th scope="col">StarsHotel</th>
      <th scope="col">ReviewsHotel</th>
       <th scope="col">NumberRoom</th>
      <th scope="col">PriceRoom</th>
       <th scope="col">Check-In</th>
      <th scope="col">Check-Out</th>
    </tr>
  </thead>
   <tbody>
   <c:forEach var="rezervare" items="${listaRezervare}">
                <tr>
                    <td>${rezervare.idrezervare}</td>
                    
                    <td>${rezervare.hoteluri.nume}</td>
                    <td>${rezervare.hoteluri.stele}</td>
                    <td>${rezervare.hoteluri.recenzii}</td>
                    
                    <td>${rezervare.camere.numar}</td>
                    <td>${rezervare.camere.pret}</td>
                    <td>${rezervare.checkin}</td>
                    <td>${rezervare.checkout}</td>
                   
                </tr>
            </c:forEach>
        </tbody>
        </table>
        </div>
		</div>
	</div>
        <div class="container-fluid">
		<div class="row text-center">
			<div class="col-md-10 offset-1">
        <div class="alert alert-secondary" role="alert">
        <form action="RezervareController" method="POST">
            <p align="center">
                Modify: <input type="radio" id="update"> Delete: <input type="radio" id="delete" onclick="document.getElementById('idhoteluri').disabled = this.checked;
                        document.getElementById('idcamere').disabled = this.checked;
                       "><br><br>
                Id:
                <select name="idrezervare">
                    <c:forEach items="${listaRezervare}" var="rezervare">
                        <option value="${rezervare.idrezervare}">${rezervare.idrezervare}</option>
                    </c:forEach>
                </select>
                <br><br>
               
                <div class="form-group">
    <label for="idhoteluri">Please select the hotel:</label>
                <select name="idhoteluri" name="idhoteluri" class="form-control">
                 <option selected>Choose...</option>
                    <c:forEach items="${listaHoteluri}" var="hoteluri">
                        <option value="${hoteluri.idhoteluri}">${hoteluri.idhoteluri}, ${hoteluri.nume}, ${hoteluri.stele}, ${hoteluri.recenzii}</option>
                    </c:forEach>
                </select>
                <br>
                
                <div class="form-group">
    <label for="idcamere">Please select the room:</label>
                <select name="idcamere"  name="idcamere" class="form-control">
                 <option selected>Choose...</option>
                    <c:forEach items="${listaCamere}" var="camere">
                        <option value="${camere.idcamere}">${camere.idcamere}, ${camere.numar}, ${camere.pret}</option>
                    </c:forEach>
                </select>
                <br>
                <div class="form-group">
						<label for="Checkin">The date of Check-In</label> <input type="text"
							class="form-control" name="Checkin" placeholder="Enter date of Check-In">
				</div>
				<br>
					
				<div class="form-group">
						<label for="Checkout">The date of Check-Out</label> <input type="text"
							class="form-control" name="Checkout" placeholder="Enter date of Check-Out">
					</div>
                
                <br>
               </div>
		</div>
	</div>
                <button type="submit" class="btn btn-outline-warning" id="modificaRezervare" name="modificaRezervare"> Modify</button> <br> <br>
                <button type="submit" class="btn btn-outline-danger" id="stergeRezervare" name="stergeRezervare"> Delete </button>
            </p>
        </form>
        <br>
        <p align="center">
		<button type="button" onclick="location.href='index.html'" class="btn btn-success"><div >HomePage</div> </button>
		</p>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    </body>
</html>
