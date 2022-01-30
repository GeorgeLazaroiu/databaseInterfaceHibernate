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

<title>Hoteluri!</title>
</head>
<body>

	<div id="add">
		<div class="container-fluid">
		<div class="row text-center">
			<div class="col-md-10 offset-1">
			<div class="alert alert-secondary" role="alert">
				<h1>Add a new hotel</h1>
				<form action="HoteluriController" method="GET">
					<div class="form-group">

						<label for="nume">Name Hotel</label> <input type="text"
							class="form-control" name="nume" placeholder="Enter nume">
					</div>

					<div class="form-group">
						<label for="adresa">Adress Hotel</label> <input type="text"
							class="form-control" name="adresa" placeholder="Enter adresa">
					</div>

					<div class="form-group">
						<label for="tara">Country Hotel</label> <input type="text"
							class="form-control" name="tara" placeholder="Enter tara">
					</div>
					<div class="form-group">
						<label for="stele">Stars Hotel</label> <input type="text"
							class="form-control" name="stele" placeholder="Enter stars">
					</div>
					<div class="form-group">
						<label for="recenzii">Reviews Hotel</label> <input type="text"
							class="form-control" name="recenzii" placeholder="Enter reviews">
					</div>
					<div class="form-group">
						<label for="numar_telefon">NoPhone Hotel</label> <input type="text"
							class="form-control" name="nrPhone" placeholder="Enter NoPhone">
					</div>
								
					<br> <br> <br> 
					<button type="submit"  name="adaugaHoteluri"  class="btn btn-dark">
					Add new hotel!<script>
						function my_button_click_handler()
						{
							alert('Button Clcked');
						}
					</script></button>
					


				</form>
			</div>

			<form action="HoteluriController" method="POST">
				<br> <br>
				<p align="center">
					<input type="submit"  name="afiseazaHoteluri"  value="Display"
						class="btn btn-info  btn-lg"> <br>
			</form>
			<br> <br>
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
