<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>searchBlog.jsp</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>

	<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core_rt" %>

	<div class="container">
           	
        		<center>
        			<h1>Blog data..</h1>
        			<br>
        			
        			<table class="table table-hover table-dark table-striped" border="1px solid black">
        			<thead>
        				<tr>
        					<th scope="col">Id</th>
        					<th scope="col">Title</th>
        					<th scope="col">SubTitle</th>
        					<th scope="col">Name</th>
        					<th scope="col">Date</th>
        					<th scope="col">About</th>
        					<th colspan="2">Action</th>
        					
        				</tr>
        			</thead>
        			<tbody>
        				<s:forEach items="${sessionScope.list}" var="i">
        					
        					<tr>
        						<td>${i.sid}</td>
        						<td>${i.title}</td>
        						<td>${i.subtitle}</td>
        						<td>${i.senderName}</td>
        						<td>${i.date}</td>
        						<td>${i.aboutpost}</td>
        						<td><a href="postController?id=${i.sid}&flag=deleteBlog"><button type="button" class="btn btn-danger">Delete</button></a></td>
        						<td><a href="postController?id=${i.sid}&flag=editBlog"><button type="button" class="btn btn-primary">Edit</button></a></td>
        	
							</tr>        				
        				</s:forEach>
		
        			</tbody>
        			</table>
        			
        
        		</center>
		
	</div>
	

</body>
</html>