<%-- 
    Document   : processCurrency
    Created on : 1 May 2024, 7:36:51 pm
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
        <h1>Use JSP Declaration tag, JSP scriplet and JSP Expression in application</h1>
        
        <%!
           
            //Define contant...
            final double USD = 3.92;
            final double STG = 5.96;
            final double EURO = 4.47;
            
            //Define method to perform currency exchange...
            private double calculateRate(String currency, int amount)
            {
                double currencyChange = 0.00f;

                if(currency.equals("1")) {
                    currencyChange = (double)(amount/USD);
                } else if(currency.equals("2")) {
                    currencyChange = (double)(amount/STG);
                } else if(currency.equals("3"))
                    currencyChange = (double)(amount/EURO);

                return currencyChange;
            }
        
        %>
        
        <%
            int amount1 = Integer.parseInt(request.getParameter("amount"));
            String currency1= request.getParameter("currency");
            
            String currencyName="";
            if(currency1.equals("1")){
                currencyName="USD";
            } else if(currency1.equals("2")) {
                currencyName="STG";
            } else if(currency1.equals("3"))
                currencyName="Euro";
        %>
        
        <p style="color: blueviolet;" >Amount in Ringgit Malaysia is RM<%= amount1 %></p>
        
        <% DecimalFormat df = new DecimalFormat("0.00"); %>
        
        <p style="color: blueviolet;" >Amount in <%= currencyName %>  is RM<%= df.format(calculateRate(currency1, amount1)) %></p>

        <footer><br>&copy;2024-Adilah Ainaa</footer>
    </body>
</html>