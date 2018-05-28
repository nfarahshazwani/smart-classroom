<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance Code SC</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
body {font-family: "Roboto", sans-serif}
.w3-bar-block .w3-bar-item{padding:16px;font-weight:bold}
</style>

<style>

h1 {

   position: relative;
   color: black;
   font-family: Arial, Helvetica, sans-serif;
   font-size: 2em;  

}

h2 {
  color: #fff;
  font-size: 24px;
  font-weight: normal;
  text-align: center;
  text-transform: uppercase;
  letter-spacing: .3em;
  display: inline-block;
  margin: 0 0 23px 0;}

.middle {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

hr {
    margin: auto;
    width: 40%;
    
}

.border {
  border: 1px solid #999;
}

input {
  margin: 10px 0;
}


body {
    background-size: 200% 100% !important;
    animation: move 10s ease infinite;
    transform: translate3d(0, 0, 0);
    background: linear-gradient(45deg, #008080 10%, #A2C7E5 90%);
    height: 100vh
}

::-webkit-file-upload-button {
 padding: 10px 32px;
}

input[type=submit]{
    background-color: 	#FFA500;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}

#buttongenerate{
    width: 300px;
    height: 40px;
}
#buttonsend{
    width: 300px;
    height: 40px;
}
#container{
    text-align: center;
}

</style>

<body>
<h2> Smart Classroom Home Page </h2>
<nav class="w3-sidebar w3-bar-block w3-collapse w3-animate-left w3-card" style="z-index:3;width:250px;" id="mySidebar">
  
  <a class="w3-bar-item w3-button w3-hide-large w3-large" href="javascript:void(0)" onclick="w3_close()">Close <i class="fa fa-remove"></i></a>
  <a class="w3-bar-item w3-button w3-teal" href="index.jsp">Home</a> 
  <a class="w3-bar-item w3-button" href="loginStud.jsp">Login</a>
  <a class="w3-bar-item w3-button" href="attendanceCodeStud.jsp">Attendance Code</a>
  <a class="w3-bar-item w3-button" href="QAsessionStud.jsp" >Q &amp; A Session</a>
  
</nav>

<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>

<div class="w3-main" style="margin-left:250px;">

  <div class="middle">
   		
    <div id="container">
        <button type="submit" class="btn btn-primary">Lecturer Login</button>
          <a href="login.jsp">Lecturer Login</a>
        <button type="submit" class="btn btn-primary">Student Login</button>
          <a href="loginStud.jsp">Student Login</a>  
          
	</div>
	</br> </br> 

    </div>
    
  </div>

<script>
// Open and close the sidebar on medium and small screens
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

// Change style of top container on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
        document.getElementById("myTop").classList.add("w3-card-4", "w3-animate-opacity");
        document.getElementById("myIntro").classList.add("w3-show-inline-block");
    } else {
        document.getElementById("myIntro").classList.remove("w3-show-inline-block");
        document.getElementById("myTop").classList.remove("w3-card-4", "w3-animate-opacity");
    }
}


</script>



</body>
</html>