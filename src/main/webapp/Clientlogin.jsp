<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	background-image: linear-gradient(45deg, darkblue,white);
	background-size: cover;
	height: 200vh;
	color: black;
}

h1 {
	text-align: center;
	font-family: Tahoma, Arial, sans-serif;
	color: #06D85F;
	margin: 80px 0;
}

.box {
	width: 60%;
	margin: 0 auto;
	background: rgba(255, 255, 255, 0.2);
	padding: 35px;
	border: 2px solid #fff;
	border-radius: 20px/50px;
	background-clip: padding-box;
	text-align: center;
}

.button {
	font-size: 1em;
	padding: 10px;
	color: #fff;
	border: 2px solid #06D85F;
	border-radius: 20px/50px;
	text-decoration: none;
	cursor: pointer;
	/* transition: all 0.3s ease-out; */
}

.button:hover {
	background: #06D85F;
}

.overlay {
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.7);
	transition: opacity 500ms;
	visibility: hidden;
	opacity: 0;
}

.overlay:target {
	visibility: visible;
	opacity: 1;
}

.text {
	box-sizing: 60px;
}

@media screen and (max-width: 700px) {
	.box {
		width: 70%;
	}
	.popup {
		width: 70%;
	}
}
</style>
</head>
<body>
	<h1>Need To Login!</h1>
	<div class="box">
		
			<form action="Authorlogin" method="get">
				<div class="text">

					<input type="text" name="Id" placeholder="Id" required><br>
					<br> <input type="text" name="Authority" placeholder="Name"
						required><br>
					<br> <input type="password" name="password"
						placeholder="Password" required><br>
					<br>
					<button type="submit">login</button>

				</div>
			</form>
	</div>


</body>
</html>