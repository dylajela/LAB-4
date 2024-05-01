<%-- 
    Document   : forward
    Created on : 1 May 2024, 10:43:45 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action (forward)</title>
    </head>
    <body>
        <h1>Using jsp:forward to display user info.</h1>
        
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name = "U_Name" value="Adilah Ainaa"/>
            <jsp:param name = "Email" value="adilahainaa@gmail.com"/>
            <jsp:param name = "Nationality" value="Malaysian"/>
            <jsp:param name = "Background" value="Student"/>
        </jsp:forward>
    </body>
</html>
