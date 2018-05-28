<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration SC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/c07.css" />
</head>

<style>
div.form-group {
	text-align: right ;
        width:300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px
}
</style>

	   <script type="text/javascript">
            function validate()
            {
                var studentID = document.getElementById("studentID");
                var password = document.getElementById("password");
                var name = document.getElementById("studentName");
                //var ic = document.getElementById("ic");
                var email = document.getElementById("studentEmail");
                //var phone = document.getElementById("phone");
                //var address = document.getElementById("address");
                
                var valid = true;
                
                if(studentID.value.length<=0 && password.value.length<=0 && name.value.length<=0 && email.value.length<=0 )
                {
                        alert("Fill Up Your Form!");
                        valid = false;
                }
                else{
                     if(!IsNumeric(studentID.value))
                        alert("Enter a number");
                    	valid = false;
                }
                
                 //nric,email,phone,address
                	/*if (password.value.length<=0 || password.value.length<6) {
                	alert("Check your password back, must be not less that 6!");
            		valid = false;
                }
                else{
                	if (name.value.length==null || name.value.length=="")
                	alert("Name cannot be blank!");
            		valid = false;
               		 }*/
               
                return valid;
                
            };

        </script>

<body>
	<h2> Registration Session </h2>
        <form action="addDataServlet" method="post" onsubmit="return validate();" >
                
                <div class="form-group">
                <label for="userID">Student ID :</label>
                <input type="text" class="form-control" name="studentID" id="studentID" placeholder="Enter Your ID Number">
                </div>
            
                <div class="form-group">
                <label for="password">Password :</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                </div>
                
                <div class="form-group">
                <label for="name">Name :</label>
                <input type="text" class="form-control" name="studentName" id="name" placeholder="Enter Your Name">
                </div>
                               
                <div class="form-group">
                <label for="email">Email Address :</label>
                <input type="text" class="form-control" name="studentEmail" id="email" placeholder="youremail@gmaill.com">
                </div>
            
                <div></div>
            
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        
</body>
</html>