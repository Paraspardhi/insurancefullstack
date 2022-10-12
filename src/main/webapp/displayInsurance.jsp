<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.Springboot.Myproject.Entity.InsuranceModel"  %>
	<%@ page import="java.util.List" %>
	<%@ page import="com.Springboot.Myproject.Service.InsuranceModelService" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Design by foolishdeveloper.com -->
    <title>Insurance</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
        <h3>View your insurance here</h3>

        <%
        String s = (String)request.getAttribute("mode");
		if(s.equals("single")){
			InsuranceModel IM = (InsuranceModel)request.getAttribute("data");
			out.println("<table border='1px'><tr><th> Id</th><th>Provider Name</th><th>Insurance Number</th><th>Valid upto</th><th>Name</th><th>NUmber Plate</th><th>Color</th><th>Model</th<th>Type</th>></tr>");
			out.println("<tr><td>"+IM.getProvider()+"</td><td>"+IM.getInsuranceNumber()+"</td><td>"+IM.getValidUpto()+"</td><td>"+IM.getUserName()+"</td><td>"+IM.getVehPlateNumber()+"</td><td>"+IM.getVehColor()+"</td><td>"+IM.getVehModleNo()+"</td><td>"+IM.getVehType()+"</td></tr></table>");
		}
		else if(s.equals("list"))
		{
			List<InsuranceModel> pl = (List<InsuranceModel>)request.getAttribute("data");
			out.println("<table border='1px'><tr><th> Id</th><th>Provider Name</th><th>Insurance Number</th><th>Valid upto</th><th>Name</th><th>NUmber Plate</th><th>Color</th><th>Model</th<th>Type</th>></tr>");
			for(InsuranceModel IM:pl){
				out.println("<tr><td>"+IM.getProvider()+"</td><td>"+IM.getInsuranceNumber()+"</td><td>"+IM.getValidUpto()+"</td><td>"+IM.getUserName()+"</td><td>"+IM.getVehPlateNumber()+"</td><td>"+IM.getVehColor()+"</td><td>"+IM.getVehModleNo()+"</td><td>"+IM.getVehType()+"</td></tr></table>");
				}
			out.println("</table>");
		}
        
       
		
	%>
  
</body>
</html>
<!-- partial -->
  
