<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login SC</title>
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/c07.css" />
</head>

  
    <style>
        body {font-family: "Roboto", sans-serif; background-color: #008080}
        .w3-bar-block .w3-bar-item{padding:16px;font-weight:bold}
    </style>
    
    <body>
        <h2> Login Session </h2>
        <nav class="w3-sidebar w3-bar-block w3-collapse w3-animate-left w3-card" style="z-index:3;width:250px;" id="mySidebar">
  
        <a class="w3-bar-item w3-button w3-hide-large w3-large" href="javascript:void(0)" onclick="w3_close()">Close <i class="fa fa-remove"></i></a>
        <a class="w3-bar-item w3-button" href="index.jsp">Home</a>
        <a class="w3-bar-item w3-button w3-teal" href="loginStud.jsp">Login</a>
        <a class="w3-bar-item w3-button" href="attendanceCodeStud.jsp">Attendance Code</a>
        <a class="w3-bar-item w3-button" href="QAsessionStud.jsp" >Q &amp; A Session</a>			
  
        </nav>
        
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>
            <div class="w3-main" style="margin-left:250px;">
                <div class="middle">
                                  
        
            <form action="attendanceCodeStud.jsp" method="post">
            
                <h1>Sign In</h1>
                
                <div class="form-group">
                <label for="userID">Student ID</label>
                <input type="text" class="form-control" name="studentID" placeholder="Enter Your ID Number">
                </div>
            
                <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
               
                
                <button type="submit" class="btn btn-primary">Submit</button>
                
                <a href="registrationStud.jsp">Register now</a>
                     
            </form>
                    
            </div>
          </div>
        <script src="js/jquery-1.11.0.js"></script>
        <script src="js/example.js"></script>
</body>
</html>