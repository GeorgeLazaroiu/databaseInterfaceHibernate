<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <title>Rooms</title>
    </head>
    <body>

        <div id="add">
         <div class="container-fluid">
		<div class="row text-center">
			<div class="col-md-10 offset-1">
        <div class="alert alert-secondary" role="alert">
            <h1> Add a new room </h1>
            <form action="CamereController" method="GET">
                 <div class="form-group">
    <label for="numar">Number of room</label>
    <input type="text" class="form-control" name="numar"  placeholder="Enter number">
  </div>
  
    <div class="form-group">
    <label for="pret">Price of room</label>
    <input type="text" class="form-control" name="pret"  placeholder="Enter price">
  </div>
	  <div class="form-group">
	    <label for="numar_persoane">NoPers of room</label>
	    <input type="text" class="form-control" name="nrPers"  placeholder="Enter NoPers">
	  </div>
	  <div class="form-group">
	    <label for="confort">Confort of room</label>
	    <input type="text" class="form-control" name="confort"  placeholder="Enter Confort">
	  </div>
      <br>
      <br>
      <br>
           
  <input type="submit" name="adaugaCamere" value="Add" class="btn btn-warning" class="btn btn-primary btn-lg" />
            </form>
        </div>
</div>
</div>
</div>
        <form action="CamereController" method="POST">
        <br>
        <br>
        <p align="center"><input type="submit" name="afiseazaCamere" value="Display" class="btn btn-info  btn-lg"> <br>
        </form>
        <br>
        <p align="center">
		<button type="button" onclick="location.href='index.html'" class="btn btn-success"><div >HomePage</div> </button>
	</p>
	 </body>
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</html>

