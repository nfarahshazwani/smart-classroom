<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard SC</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/c07.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

<style>
body {font-family: "Roboto", sans-serif}
.w3-bar-block .w3-bar-item{padding:16px;font-weight:bold}
</style>
<head>
    <script>
    function draw() {
        /* Accepting and seperating comma seperated values */
        var n = document.getElementById("num").value;
        var values = n.split(',');
        
        var canvas = document.getElementById('myCanvas');
        var ctx = canvas.getContext('2d');
        var width = 40; //bar width
        var X = 50; // first bar position 
        var base = 200;
        
        for (var i =0; i<values.length; i++) {
            ctx.fillStyle = '#008080'; 
            var h = values[i];
            ctx.fillRect(X,canvas.height - h,width,h);
            
            X +=  width+15;
            /* text to display Bar number */
            ctx.fillStyle = '#4da6ff';
            if(i== 0)
                ctx.fillText('FIRDAUS'+i,X-50,canvas.height - h -10);
            if(i== 1)
                ctx.fillText('AMIRUL'+i,X-50,canvas.height - h -10);
            if(i== 2)
                ctx.fillText('PRAVIN'+i,X-50,canvas.height - h -10);
        }
          
            
  
    }
    function reset(){
         var canvas = document.getElementById('myCanvas');
          var ctx = canvas.getContext('2d');
           ctx.clearRect(0, 0, canvas.width, canvas.height);
    }
</script>
</head>

	<style>
        body {font-family: "Roboto", sans-serif; background-color: #0AAEAE}
        .w3-bar-block .w3-bar-item{padding:16px;font-weight:bold}
    </style>

<body>

<h2> Dashboard Smart Classroom </h2>
<nav class="w3-sidebar w3-bar-block w3-collapse w3-animate-left w3-card" style="z-index:3;width:250px;" id="mySidebar">
  
  <a class="w3-bar-item w3-button w3-hide-large w3-large" href="javascript:void(0)" onclick="w3_close()">Close <i class="fa fa-remove"></i></a>
  
  <a class="w3-bar-item w3-button" href="index.jsp">Home</a>
  <a class="w3-bar-item w3-button" href="login.jsp">Login</a>
  <a class="w3-bar-item w3-button" href="attendanceCode.jsp">Attendance Code</a>
  <a class="w3-bar-item w3-button" href="QAsession.jsp" >Q &amp; A Session</a>
  <a class="w3-bar-item w3-button w3-teal" href="dashboard.jsp">Semester Attendance</a>
  
</nav>

<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>

<div class="w3-main" style="margin-left:250px;">

<h1><b>SEMESTER ATTENDANCE</b></h1>
            <h3>Course Selection

            <select>
                <option value="SSK4300">SSK4300</option>
                <option value="SKR4200">SKR4200</option>
                <option value="SSE4450">SSE4450</option>
                <option value="BBI2423">BBI2423</option>
            </select> </h3 >


            <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Matric Number</th>
      <th scope="col">Name</th>
      <th scope="col">Percentage%</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>123456</td>
      <td>Jacob</td>
      <td>88</td>
      <td>Valid</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>111111</td>
      <td>Nina</td>
      <td>90</td>
      <td>Valid</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>666666</td>
      <td>Brandon</td>
      <td>55</td>
      <td>Invalid</td>
    </tr>
  </tbody>
</table>
         

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
    
    <button type="button send-button" id="buttonsend" onClick="alert('Saved to SMP')" >Save</button>
    
</body>
</html>