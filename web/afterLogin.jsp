<%-- 
    Document   : afterLogin
    Created on : May 28, 2018, 6:30:52 PM
    Author     : User
--%>

        <%
        
        session.setAttribute("loginID",request.getAttribute("loginID"));
        response.sendRedirect("index.jsp");
        %>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
    </body>
</html>
