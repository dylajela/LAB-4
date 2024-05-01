<%-- 
    Document   : processBMI
    Created on : 2 May 2024, 3:30:42 am
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset> 
            <legend>Body Mass Index (BMI) Calculator</legend>
            <p style ="color: red">RESULTS</p>
                
            <%
                double weight = Double.parseDouble(request.getParameter("weight"));
                double height = Double.parseDouble(request.getParameter("height"));
                
                double heightInMeters = height / 100;
                
                double bmi = weight/(heightInMeters*heightInMeters);
                String result;
                
                
                
                if(bmi < 18.5) {
                    result = "Underweight";
                } else if (bmi >= 18.5 && bmi<= 25) {
                    result = "Optimal weight";
                } else {
                    result = "Overweight";
                }
            %>
            
            <% DecimalFormat df = new DecimalFormat("0.00"); %>
            
            <p>Your BMI : <%= df.format(bmi)%></p>
            <p>You are : <%= result%> </p>
            
        </fieldset>
        <footer><br>&copy;2024-Adilah Ainaa</footer>
    </body>
</html>
