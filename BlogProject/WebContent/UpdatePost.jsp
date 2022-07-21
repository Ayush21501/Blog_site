<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdatePost.jsp</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<style type="text/css">
	body{
		background-color:black;
	}
</style>


</head>
<body>
	<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core_rt" %>

		<div class="container my-5 text-white">

        	<form action="postController" method="post">
        		
        	<s:forEach items="${sessionScope.list3}" var="i">
        	
        	
        	 <input type="hidden" name="id" value="${i.sid}">
        		
        	<div class="mb-4">
			  <label for="formGroupExampleInput" class="form-label">Title</label>
			  <input type="text" class="form-control" name="title" value="${i.title}" id="formGroupExampleInput" >
			</div>

			<div class="mb-4">
			  <label for="formGroupExampleInput2" class="form-label">Sub-Title</label>
			  <input type="text" class="form-control" name="subtitle" value="${i.subtitle}" id="formGroupExampleInput2" >
			</div>
			
			<div class="mb-4">
			  <label for="formGroupExampleInput2" class="form-label">UserName</label>
			  <input type="text" class="form-control" name="sendername" value="${i.senderName}" id="formGroupExampleInput2" >
			</div>
        		
        		
        	<div class="mb-4">
			  <label for="formGroupExampleInput2" class="form-label">About Post</label>
			  <textarea class="form-control" name="aboutpost" id="formGroupExampleInput2">${i.aboutpost}</textarea>
			</div>
        					
     
    		<button class="btn btn-primary my-3" name="flag" value="updateBlog">Update Blog</button>
    				 
    				</s:forEach>
    			</form>

		</div> 
		
	


</body>
</html>