<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome.jsp</title>



<style>
	
	  *{
            margin: 0;
            padding: 0;
        }
        .container{
            height: 100vh;
            width: 100vw;
            background-image: url(assets/img/background.png);
        }
        
        .navbar{
           display: flex;
        }
       
        .navbar img{
            width: 750px;
            height: 725px;
            margin-top:25px ;
            margin-left: 680px;
        }
       *{
            margin: 0;
            padding: 0;
            font-family: Lucida Handwriting;
        }
        .bult{
            margin: 40px 0;
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            letter-spacing: 1px;
            border-radius: 40px; 
            padding: 12px 36px;
            display: inline-block; 
            overflow: hidden;  
            position:absolute;
            top:370px;    
            background: linear-gradient(90deg,#755bea,#ff72c0);
            left:350px;
        }
        span{
            position: absolute;
            background: #fff;
            transform: translate(-50%,-50%);
            pointer-events: none;
            border-radius: 50%;
            animation: animate 1s linear infinite;
        }
        @keyframes animate{
            0%{
                width: 0px;
                height: 0px;
                opacity: 0.5;
            }
            100%{
                width: 500px;
                height: 500px;
                opacity: 0;
            }
        }
        h1{
        	position:absolute;
            top:190px;
            left:200px;
            color:#803bba;
        	font-size:40px;
        }
        
        
       </style>


</head>
<body>

		<div class="container">
		
        <div class="navbar">
        	<img src="assets/img/acterss.png">
        	
        	<h1>WELCOME USER.. <br><br> Hope You Like This Web-Site...</h1>
			
    		<a href="postController?flag=search" class="bult" >Open WebSite</a>

			
		</div>
	</div>

	<script>
        const buttons = document.querySelectorAll('a');
        buttons.forEach(btn => {
            btn.addEventListener('click',function(e){
                let x = e.clientX - e.target.offsetLeft;
                let y = e.clientY - e.target.offsetTop;

                let ripples = document.createElement('span');
                ripples.style.left = x + 'px';
                ripples.style.top = y + 'px';
                this.appendChild(ripples)
                
                setTimeout(()=>{
                    ripples.remove()
                },1000)
            })
        })
    </script>
	


</body>
</html>