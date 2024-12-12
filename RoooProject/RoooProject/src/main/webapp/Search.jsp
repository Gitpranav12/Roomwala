<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="container">
<%@ include file = "NewHome.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<form>
<input type="text" placeholder="Enter Area to Search" name="s1" class="form-control">
<br/>
<input type="submit" name="sub">

</form>
<%String str1=request.getParameter("sub") ;
if(str1!=null){

%>
<div class="row">
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Roomwala","root","admin@123");
PreparedStatement prstm=con.prepareStatement("select * from owner where keyword like ?");
prstm.setString(1, "%" + request.getParameter("s1")+ "%");
ResultSet rs=prstm.executeQuery();
while(rs.next()){
%>



<div class="col-sm-4">
				<div class="card">
					<img class="card-img-top" src="images/mess2.jpg" alt="Card image">
					<div class="card-body">
						<h4 class="card-title"><%out.println(rs.getString(2)); %></h4>
						<p class="card-text"><%out.println(rs.getString(9)); %></p>
						<p class="card-text"><%out.println(rs.getString(4)); %></p>
						<p class="card-text"><%out.println(rs.getString(5)); %></p>
						<a href="#" ><a href="PutOrder.jsp?id=<%out.println(rs.getString(1)); %>&messname=<%out.println(rs.getString(2)); %>"><input type="submit" class="btn btn-primary" value="Put Order"></a></a>
					</div>
				</div>
			</div>
<% 
}
}catch(Exception e){
	
}
}
%>
</div>

</div>
</body>
</html>