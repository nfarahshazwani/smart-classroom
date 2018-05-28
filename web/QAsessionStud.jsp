<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Q&A Session SC</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/c07.css" />
</head>

<style>
body {font-family: "Roboto", sans-serif}
.w3-bar-block .w3-bar-item{padding:16px;font-weight:bold}
</style>

<body>

<h2> Question and Answer Session </h2>
<nav class="w3-sidebar w3-bar-block w3-collapse w3-animate-left w3-card" style="z-index:3;width:250px;" id="mySidebar">
  
        <a class="w3-bar-item w3-button w3-hide-large w3-large" href="javascript:void(0)" onclick="w3_close()">Close <i class="fa fa-remove"></i></a>
        <a class="w3-bar-item w3-button" href="index.jsp">Home</a>
        <a class="w3-bar-item w3-button" href="loginStud.jsp">Login</a>
        <a class="w3-bar-item w3-button" href="attendanceCodeStud.jsp">Attendance Code</a>
        <a class="w3-bar-item w3-button w3-teal" href="QAsessionStud.jsp" >Q &amp; A Session</a>	
  
</nav>

<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>

<div class="w3-main" style="margin-left:250px;">

<div id="page">
      
      <h2>What is your question? <span id="counter"></span></h2>
      <ul>
        <li id="one" >What is CBSE?</li>
        <li id="two" >I don't understand section 4.2</li>
        <li id="three" > What is the differences between CBSE and CB System? </li>
        <li id="four">I don't understand this concept</li>
      </ul>

      <div id="newItemButton"><button href="#" id="showForm">new question</button></div>
      <form id="newItemForm">
        <input type="text" id="itemDescription" placeholder="Add description" />
        <input type="submit" id="add" value="add" />
      </form>
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

<script src="js/jquery-1.11.0.js"></script>
    <script src="js/example.js"></script>

</body>
</html>