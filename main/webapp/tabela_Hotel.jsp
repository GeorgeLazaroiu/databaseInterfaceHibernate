<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <title>Hoteluri</title>
         <div class="container-fluid">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#stergeHotel").hide();
                $("#modificaHoteluri").hide();

                $("#update").click(function () {
                    $("#modificaHoteluri").show();
                    $("#stergeHotel").hide();
                });
                $("#delete").click(function () {
                    $("#stergeHotel").show();
                    $("#modificaHoteluri").hide();
                });
            });
        </script>

    </head>
    <body>
        <h1 align="center">Hoteluri Table:</h1>
        <div class="container-fluid">
		<div class="row text-center">
			<div class="col-md-10 offset-1"> 
       <table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">IdHotel</th>
      <th scope="col">Nume</th>
      <th scope="col">Adresa</th>
      <th scope="col">Tara</th>
      <th scope="col">Stars</th>
      <th scope="col">Reviews</th>
      <th scope="col">NoPhone</th>
    </tr>
  </thead>
   <tbody>
   <c:forEach var="hoteluri" items="${listaHoteluri}">
    <tr>
      
      <td>${hoteluri.idhoteluri}</td>
      <td>${hoteluri.nume}</td>
      <td>${hoteluri.adresa}</td>
       <td>${hoteluri.tara}</td>
       <td>${hoteluri.stele}</td>
       <td>${hoteluri.recenzii}</td>
       <td>${hoteluri.nrPhone}</td>
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
        <form action="HoteluriController" method="POST">
            <p align="center">
                Modify: <input type="radio" class="btn btn-secondary btn-lg" id="update"> Delete: <input type="radio" class="btn btn-secondary btn-lg" id="delete" onclick="document.getElementById('nume').disabled = this.checked;
                        document.getElementById('adresa').disabled = this.checked;
                        document.getElementById('tara').disabled = this.checked;
                        document.getElementById('stele').disabled = this.checked;
                        document.getElementById('recenzii').disabled = this.checked;
                        document.getElementById('nrPhone').disabled = this.checked;"><br><br>
                <select name="idhoteluri">
                    <c:forEach items="${listaHoteluri}" var="hoteluri">
                        <option value="${hoteluri.idhoteluri}">${hoteluri.idhoteluri}</option>
                    </c:forEach>
                </select>
                <br><br>
                <div class="container-fluid">
				<div class="row text-center">
				<div class="col-md-10 offset-1">
                <div class="form-label">
  <label for="nume" >Name</label>
  <input type="text" class="form-control" name="nume" id="nume"  placeholder="Modify the Name">
</div>
<div class="form-label">
  <label for="adresa" >Adress</label>
  <input type="text" class="form-control" name="adresa" id="adresa"  placeholder=" Modify the adress">
</div>
<div class="form-label">
  <label for="tara" >Country</label>
  <input type="text" class="form-control" name="tara" id="tara" placeholder=" Modify the country">
</div>
<div class="form-label">
  <label for="stele" >Stars</label>
  <input type="text" class="form-control" name="stele" id="stele" placeholder=" Modify the stars">
</div>
<div class="form-label">
  <label for="recenzii" >Reviews</label>
  <input type="text" class="form-control" name="recenzii" id="recenzii" placeholder=" Modify the reviews">
</div>
<div class="form-label">
  <label for="numar_telefon" >NoPhone</label>
  <input type="text" class="form-control" name="nrPhone" id="nrPhone" placeholder=" Modify the NoPhone">
</div>
</div>
</div>
</div>
</div>
        </div>
        </div>
<div align = "center">
               
                <button type="submit" class="btn btn-outline-warning" id="modificaHoteluri" name="modificaHoteluri"> Modify</button> <br> <br>
                <button type="submit" class="btn btn-outline-danger" id="stergeHotel" name="stergeHotel"> Delete </button>
 </div>           
            </p>
        </form>
       <p align="center">
		<button type="button" onclick="location.href='index.html'" class="btn btn-success"><div >HomePage</div> </button>
	</p>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    
</html>
