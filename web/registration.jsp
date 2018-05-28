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
                var lecturerID = document.getElementById("lecturerID");
                var password = document.getElementById("password");
                var name = document.getElementById("name");
                var ICNo = document.getElementById("ICNo");
                var email = document.getElementById("email");
                var phoneNo = document.getElementById("phoneNo");
                var address = document.getElementById("address");
                
                var valid = true;
                
                if(lecturerID.value.length<=0 && password.value.length<=0 && name.value.length<=0 && ICNo.value.length<=0 && email.value.length<=0 && phoneNo.value.length<=0 && address.value.length<=0)
                {
                        alert("Fill Up Your Form!");
                        valid = false;
                }
                else{
                     if(!IsNumeric(lecturerID.value))
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
                <label for="lecturerID">Lecturer ID :</label>
                <input type="text" class="form-control" name="lecturerID" id="lecturerID" placeholder="Enter Your ID Number">
                </div>
            
                <div class="form-group">
                <label for="password">Password :</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                </div>
                
                <div class="form-group">
                <label for="name">Name :</label>
                <input type="text" class="form-control" name="name" id="name" placeholder="Enter Your Name">
                </div>
  
                <div class="form-group">
                <label for="ic">NRIC :</label>
                <input type="text" class="form-control" name="ICNo" id="ic" placeholder="Enter Your IC Number">
                </div>
                
                <div class="form-group">
                <label for="email">Email Address :</label>
                <input type="text" class="form-control" name="email" id="email" placeholder="youremail@gmaill.com">
                </div>
                
                <div class="form-group">
                <label for="phone">Phone Number :</label>
                <input type="text" class="form-control" name="phoneNo" id="phone" placeholder="01XXXXXXXXX">
                </div>
                
                
                <div class="form-group">
                <label for="address">Address :</label>
                <input type="text" class="form-control" name="address" id="address" placeholder="Enter Your Address">
                </div>
            
                <div></div>
            
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        
</body>
</html>