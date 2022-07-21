<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignIn.jsp</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style type="text/css">
.gradient-custom {
/* fallback for old browsers */
background: #6a11cb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
}
</style>
</head>
	
<body>

<!-- 
		<div class="container">
        	
            	
            <div class="main" >
            	
            		
				
				
				<div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Email address</label>
				    <input type="email"  name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
				  </div>

				<div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Password</label>
				    <input type="password" name="password" class="form-control" id="exampleInputPassword1">
				  </div>
				  
				
				<div class="form-element">
					<button name="submitbutton" class="btn btn-primary" >submit</button>
				</div>
				
				
			</div>
				
          	</div>
		
		
		 -->
		
		
				  
				
		
		
	<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-3 mt-md-3 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-3">Please enter your login and password!</p>

			<form action="confirmUser.jsp">
				<%
					String error = (String)session.getAttribute("error");
					if(error != null)
					{
						out.println("<p style='color:red'>"+error+"</p><br>");
					}
		
				%>


              <div class="form-outline form-white mb-4">
                <input type="email"  name="email" id="typeEmailX" class="form-control form-control-lg" />
                <label class="form-label" for="typeEmailX">Email</label>
              </div>

              <div class="form-outline form-white mb-4">
                <input type="password"  name="password" id="typePasswordX" class="form-control form-control-lg" />
                <label class="form-label" for="typePasswordX">Password</label>
              </div>

              <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

              <button class="btn btn-outline-light btn-lg px-5" name="submitbutton" type="submit">Login</button>

			</form>

            </div>

            

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			   

</body>
</html>