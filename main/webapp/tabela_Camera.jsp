<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <title>Locations</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#stergeCamera").hide();
                $("#modificaCamere").hide();

                $("#update").click(function () {
                    $("#modificaCamere").show();
                    $("#stergeCamera").hide();
                });
                $("#delete").click(function () {
                    $("#stergeCamera").show();
                    $("#modificaCamere").hide();
                });
            });
        </script>

    </head>
    <body>
        <h1 align="center"> Camere Table:</h1> 
        <div class="container-fluid">
		<div class="row text-center">
			<div class="col-md-10 offset-1">
         <table class="table table-bordered table-dark">
        <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Number of room</th>
      <th scope="col">Price of room</th>
      <th scope="col">NoPers of room</th>
      <th scope="col">Confort of room</th>
     
    </tr>
  </thead>
            <tbody>
   <c:forEach var="Camere" items="${listaCamere}">
    <tr>
                    <td>${Camere.idcamere}</td>
                    <td>${Camere.numar}</td>
                    <td>${Camere.pret}</td>
                    <td>${Camere.nrPers}</td>
                    <td>${Camere.confort}</td>

                </tr>
            </c:forEach>
             </tbody>
        </table>
        <div class="container-fluid">
		<div class="row text-center">
			<div class="col-md-10 offset-1">
        <div class="alert alert-secondary" role="alert">
        <form action="CamereController" method="POST">
            <p align="center">
                Modify: <input type="radio" class="btn btn-secondary btn-lg" id="update"> Delete: <input type="radio" class="btn btn-secondary btn-lg" id="delete" onclick="document.getElementById('numar').disabled = this.checked; document.getElementById('pret').disabled = this.checked;document.getElementById('nrPers').disabled = this.checked;document.getElementById('confort').disabled = this.checked"><br><br>
                        
                <select name="idcamere">
                    <c:forEach items="${listaCamere}" var="Camere">
                        <option value="${Camere.idcamere}">${Camere.idcamere}</option>
                    </c:forEach>
                </select>
               <div class="form-label">
  <label for="numar" >City</label>
  <input type="text" class="form-control" name="numar" id="numar" placeholder="Modify the number">
</div>
<div class="form-label">
  <label for="pret">Price</label>
  <input type="text" class="form-control" name="pret" id="pret" placeholder=" Modify the Price">
</div>
<div class="form-label">
  <label for="nrPers">Number of Pers</label>
  <input type="text" class="form-control" name="nrPers" id="nrPers" placeholder=" Modify the NoPers">
</div>
<div class="form-label">
  <label for="confort">Confort</label>
  <input type="text" class="form-control" name="confort" id="confort" placeholder=" Modify the Confort">
</div>

                
                <br>
               </div>
		</div>
	</div>
                <button type="submit" class="btn btn-outline-warning" id="modificaCamere" name="modificaCamere"> Modify</button> <br> <br>
                <button type="submit" class="btn btn-outline-danger" id="stergeCamera" name="stergeCamera">  Delete:  </button>
            </p>
        </form>
       <p align="center">
		<button type="button" onclick="location.href='index.html'" class="btn btn-success"><div >HomePage</div> </button>
	</p>
	</div>
	</div>
	</div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    </body>
</html>
