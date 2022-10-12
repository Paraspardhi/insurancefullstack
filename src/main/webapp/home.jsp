<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css\style.css">

</head>
<body>
	<section class="header" id="header">
		<div class="nav-bar">
			<div class="logo">
				<a href="#">Believe Me !</a>
			</div>
			<div class="menu">
				<ul>
					<li><a href="#" class="a1">Home</a></li>
					<div class="dropdown">
						<li><a>Dashboard</a></li>
						<div class="dropdown-content">
							<li><span><a href="Clientlogin.jsp">Client</a></span><br></li>
							<br>
							<li><span><a href="Bike.jsp">Bikes</a></span></li> <br>
							<li><span><a>Cart</a></span></li>
						</div>
					</div>
					<li><a href="#" class="a1">About</a></li>
				</ul>
			</div>


		</div>
		<div class="hero">
			<div class="content">
				<h2>Car Insurance</h2>
				<div class="card">
					price from
					<div class="row">
						$78
						<div class="car">
							<img src="images/Car1.png" width="740px" height="450px">
						</div>
					</div>
					<p>
						Pocket friendly premiums, zero paperwork, seamless purchase.<br>
						That's the convenience you can be assured of when you<br>
						buyTwo Wheeler and Four Wheeler Insurance from Believe Me Limited
						(BML).<br> In association with our trusted partners we bring
						to you <br>some of the best suited plans that fit your needs and your
						pocket!
					</p>
					<br> <br>
					<div class="openBtn">
						<form action="showForm" method="get">
							<button class="openButton"
								onclick="document.getElementById('id01').style.display='block'"
								style="width: auto;">Get Insurance</button>
					</div>
					<div id="id01" class="modal">
						<span
							onclick="document.getElementById('id01').style.display='none'"
							class="close" title="Close Modal">&times;</span>
						<form class="modal-content" action="/action_page.php">
							<div class="container">
								<h1>Search Model</h1>
								<form action="displayInsurance.jsp" method="get">
									<hr>
									<label for="showForm"><b>UserName</b></label> <input
										type="text" placeholder="Enter Provider Name" name="provider"
										required>
										 <label for="licenseNo"><b>License Number</b></label> 
										 <input type="number" placeholder="Enter Insurance Number" name="insuranceNumber" required>
										 <label> <input type="checkbox" checked="checked" name="remember"
										style="margin-bottom: 15px"> Remember me
									</label>

									<p>
										By creating an account you agree to our <a href="#"
											style="color: dodgerblue">Terms & Privacy</a>.
									</p>

									<div class="clearfix">
										<button type="button"
											onclick="document.getElementById('id01').style.display='none'"
											class="cancelbtn">Cancel</button>
										<button type="submit" class="signupbtn">Get Quote</button>
									</div>
							</div>
						</form>

						</form>
					</div>

					<script>
						// Get the modal
						var modal = document.getElementById('id01');

						// When the user clicks anywhere outside of the modal, close it
						window.onclick = function(event) {
							if (event.target == modal) {
								modal.style.display = "none";
							}
						}
					</script>
					</form>

				</div>
			</div>
		</div>
		<!-- <div class="card">
			<div class="para">
				What is Car Insurance ? <img src="images\12.png" width="160px"
					height="96px"> <br>
				<br>

				<ul>
					<li>Car insurance provides compensation to the policyholder in
						the event their car is stolen or damaged due to any unforeseen
						circumstances. Individuals can select from the three types of car
						insurance: Third-Party Car Insurance, Comprehensive Car insurance,
						and Standalone Own Damage Car Insurance.</li>
					<br>
					<br>
					<li>Search for Car Insurance Policy and Discover Millions of
						Results. Get Results for Car Insurance Policy. Find Results from
						Multiple Sources. Easy Access Information. Simple in Use. Fast and
						Trusted. Discover Us Now! Multiple Sources Combined.</li>
				</ul>
			</div>
		</div>

		<br>
		<div class="card">
			<div class="para">
				We shield your Car <img src="images\123.png" width="90px"
					height="66px"> <br>
				<br>

				<ul>
					<li>A car is every owners pride and joy. We will protect it
						against loss or damage due to theft or accident.</li>
				</ul>
			</div>
		</div>

		<br> <br>
		<div class="card">
			<div class="para">
				We Shield You ! <img src="images\1234.png" width="110px"
					height="66px"> <br> <br>

				<ul>
					<li>We help you be prepared for the unforeseen. You are
						covered by a Personal Accident Cover for a minimum of Rs.15 lakh.
						You can extend cover for passengers too.</li>
				</ul>
			</div>
		</div>

		</div>
		</div>
		</div> -->


	</section>


</body>
</html>