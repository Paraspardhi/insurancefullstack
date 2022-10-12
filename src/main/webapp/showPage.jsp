<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.Springboot.Myproject.Entity.VehicleModel"%>
<%@ page import="com.Springboot.Myproject.Entity.InsuranceModel"%>
<%@ page import="com.Springboot.Myproject.Entity.UserModel"%>
<%@ page import="com.Springboot.Myproject.Entity.SearchModel"%>
<%@ page import="java.util.List"%>
<!Doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<title>insurance home</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="C:\Users\gok\Desktop\insurancecss.Css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@700&family=Gulzar&family=Kdam+Thmor+Pro&family=Lato:ital,wght@1,300&family=Montserrat:ital,wght@1,500&family=Nunito+Sans:wght@200&family=Open+Sans:ital@1&family=Roboto:wght@300&display=swap');

* {
	background-image:linear-gradient(45deg,purplwhite);
	font-size: 18px;

}

body {

}

.item1 {
	grid-area: header;
}

.item2 {
	grid-area: menu;
}

.item3 {
	grid-area: main;
}

.item4 {
	grid-area: right;
}

.item5 {
	grid-area: footer;
}

.grid-container>div.item1 {
	text-align: left;
	font-size: 25px;
	font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
	font-weight: 700;
}

.grid-container {
	display: grid;
	grid-template-areas: 'header header header header header header'
		'menu main main main right right'
		'menu footer footer footer footer footer';
	gap: 10px;
	background-color: none;
	padding: 10px;
}

.grid-container>div {
	background-color: none;
	text-align: auto;
	padding: 20px 0;
	font-size: 70px;
}

.io {
	border-image: 50%;
	justify-content: center;
	text-align: center;
}

h1 {
	font-size: 30px;
	font-weight: 1600;
	font-style: oblique;
	justify-content: center;
	text-align: center;
	font-family: 'Gemunu Libre', sans-serif;
}

.content .card{
   font-size: 25px;
   font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
   color:white;
}
.content .card .row{
   font-size: 90px;
   font-weight: 80;
   font-family: Arial, Helvetica, sans-serif;
   padding-left: 4%;
   padding-top: 0%;
   font-family: 'Gulzar', serif;
font-family: 'Kdam Thmor Pro', sans-serif;
font-family: 'Lato', sans-serif;
font-family: 'Montserrat', sans-serif;
font-family: 'Nunito Sans', sans-serif;
font-family: 'Open Sans', sans-serif;
font-family: 'Roboto', sans-serif;
   
}
.content .card p{
font-family: Arial, Helvetica, sans-serif;
   font-size: 15px;
 padding: left;
font-weight: 40;
color: white;

}
.content .card .car {
   padding-right: 10%;
   align-items : right;
   float: right;
   margin: 0 0  0 49px;
   margin: -10%;
   
}
.mySlides {
	display: none;
}
.para {
	font-size: 19px;
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	font-weight: 800;
	padding-left: 10%;
}


  .footer {
  display: flex;
  flex-flow: row wrap;
  padding: 30px 30px 20px 30px;
  color: #2f2f2f;
  background-color: black;
  border-top: 1px solid #e5e5e5;
}

.footer > * {
  flex:  1 200%;
}

.footer__addr {
  margin-right: 1.25em;
  margin-bottom: 2em;
}

.footer__logo {
  font-family: 'Pacifico', cursive;
  font-weight: 400;
  text-transform: lowercase;
  font-size: 2rem;
}

.footer__addr h2 {
  margin-top: 1.3em;
  font-size: 15px;
  font-weight: 400;
}

.nav__title {
  font-weight: 400;
  font-size: 15px;
}

.footer address {
  font-style: normal;
  color: #999;
}

.footer__btn {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 36px;
  max-width: max-content;
  background-color: rgb(33, 33, 33, 0.07);
  border-radius: 100px;
  color: #2f2f2f;
  line-height: 0;
  margin: 0.6em 0;
  font-size: 1rem;
  padding: 0 1.3em;
}

.footer ul {
  list-style: none;
  padding-left: 0;
}

.footer li {
  line-height: 2em;
}

.footer a {
  text-decoration: none;
}

.footer__nav {
  display: flex;
	flex-flow: row wrap;
}

.footer__nav > * {
  flex: 1 50%;
  margin-right: 1.25em;
}

.nav__ul a {
  color: #999;
}

.legal {
  display: flex;
  flex-wrap: wrap;
  color: #999;
}

@media screen and (min-width: 24.375em) {
  .legal .legal__links {
    margin-left: auto;
  }
}

@media screen and (min-width: 40.375em) {
  .footer__nav > * {
    flex: 1;
  }

  .footer__addr {
    flex: 1 0px;
  }

  .footer__nav {
    flex: 2 0px;
  }
}
  </style>
</head>
<body class="p-3 m-0 border-0 bd-example">
	<div class="grid-container">
		<div class="item1">
			<div class="button">Home</div>
		</div>


		<div class="item3">
			<div class="container">
				<div class="card">
					<div class="card-body">
						<div class="io">
							<h1>Here's Your Car</h1>
							<img
								src="images\place1.png" width="30%" height="85%">
								<img src="images\bike1.png" width="30%" height="85%">
							<p>Please verify your details and proceed to view plans</p>
							<br>
							<br>
								<%
						String s = (String)request.getAttribute("plate");
						if(s.equals("single")){
							List<VehicleModel> vm = (List<VehicleModel>)request.getAttribute("data");
							List<UserModel> um = (List<UserModel>)request.getAttribute("data");
							List<InsuranceModel> im = (List<InsuranceModel>)request.getAttribute("data");
							List<SearchModel> sm = (List<SearchModel>)request.getAttribute("data");
							for(VehicleModel v:vm){
							out.println("'provider Id : '"+v.getId()+"<br>Bike Name :"+v.getname()+"<br>Number Plate :"+v.getPlateNumber()+"<br>PendingFines :"+v.getPendingfines());
						}
							for(InsuranceModel i:im){
								out.println("<br> provider Name :"+i.getProvider()+"<br>Insurance Date :"+i.getInsuranceDate()+"<br>Insurance Number"+i.getInsuranceNumber());
							}
						}
					
							%>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="item4">
			<div class="container">
				<!-- Content here -->

				<div class="card">
					<div class="card-body">
						<div class="form-check">
							<div class="card">
								<div class="card-body">
									<div class="form-check">

										<label class="form-check-label" for="flexCheckDefault">
											<!-- <img src = "C:\Users\gok\Downloads\Html\logos\acko.png" width ="100px" height ="35px"> -->


											<ul>
												Comprehensive plan :
												<li>Covers damage to your bike</li>
												<li>Covers damages to other's vehicle and property</li>
												<li>Price starts from Rs.1908 +GST / year</li>
											</ul>

										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br>
				<br>

				<div class="card">


					<div class="card">
						<div class="card-body">
							<div class="form-check">
								<div class="card">
									<div class="card-body">
										<div class="form-check">

											<label class="form-check-label" for="flexCheckDefault">
												<!-- <img src = "C:\Users\gok\Downloads\Html\logos\acko.png" width ="100px" height ="35px"> -->


												<ul>
													Comprehensive plan :
													<li>Covers damages to your bike</li>
													<li>Covers damages to other's vehicle and property</li>
													<li>Price starts from Rs.1908 +GST / year</li>
												</ul>

											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>


			</div>
		</div><br><br>
		
<div class="item5">
<div class="card-group">
  <div class="card">
    <img class="card-img-top" src="C:\Users\gok\Downloads\Html\car images\accident.jpg" height="200px"><br>
    <div class="card-body">
      <h5 class="card-title">Accidents</h5><br>
      <p class="card-text">Damages and losses that may arise out of accidents and collisions.</p>
    </div>
    
  </div>
  <div class="card">
    <img class="card-img-top" src="C:\Users\gok\Downloads\Html\car images\carfire.jpg" height="200px" ><br>
    <div class="card-body">
      <h5 class="card-title">Fire</h5><br>
      <p class="card-text">Damages and losses caused to your car due to an accidental fire.</p>
    </div>
    
  </div>
<div class="card">
    <img class="card-img-top" src="C:\Users\gok\Downloads\Html\car images\flood.jpg" height="200px" ><br>
    <div class="card-body">
      <h5 class="card-title">Fire</h5><br>
      <p class="card-text">Damages and losses caused to your car due to an accidental fire.</p>
    </div>
    
  </div>
  <div class="card">
    <img class="card-img-top" src="C:\Users\gok\Downloads\Html\car images\personal.png" height="220px">
    <div class="card-body">
      <h5 class="card-title">Personal</h5><br>
      <p class="card-text">If there is a car accident and unfortunately, it leads to death or disability of the owner.</p>
    </div> 
  </div>
</div></div>

<footer class="footer">
  <div class="footer__addr">
    <h1 class="footer__logo">Your Logo</h1>

    <h2>Contact</h2>

    <address>
      Your address, 123 Avenue, Country<br>

      <a class="footer__btn" href="mailto:example@gmail.com">Email Us</a>
    </address>
  </div>

  <ul class="footer__nav">
    <li class="nav__item">
      <h2 class="nav__title">Rewards</h2>

      <ul class="nav__ul">
        <li>
          <a href="#">Join Now</a>
        </li>

        <li>
          <a href="#">Learn More</a>
        </li>

        <li>
          <a href="#">Manage Account</a>
        </li>
      </ul>
    </li>

    <li class="nav__item">
      <h2 class="nav__title">News & Info</h2>

      <ul class="nav__ul">
        <li>
          <a href="#">Press Releases</a>
        </li>

        <li>
          <a href="#">About Our Products</a>
        </li>

        <li>
          <a href="#">Product Support</a>
        </li>

        <li>
          <a href="#">Product Manuals</a>
        </li>

        <li>
          <a href="#">Product Registration</a>
        </li>

        <li>
          <a href="#">Newsletter Sign Up</a>
        </li>
      </ul>
    </li>

    <li class="nav__item">
      <h2 class="nav__title">Support</h2>

      <ul class="nav__ul">
        <li>
          <a href="#">FAQ</a>
        </li>

        <li>
          <a href="#">Help Desk</a>
        </li>

        <li>
          <a href="#">Forums</a>
        </li>
      </ul>
    </li>
  </ul>
  <div class="legal">
    <p>&copy; 2022 Copyright.</p>

  </div>
</footer>

</body>
</html>