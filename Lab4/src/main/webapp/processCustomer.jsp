<%-- 
    Document   : processCustomer
    Created on : 1 May 2024, 12:00:17 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Use JSP Scriplet and JSP Expression in application </h2>
        <%
            final int price = 10;
            
            //Using JSP Scriptlet
            String cust_no1 = request.getParameter("cust_no");
            int quantity1 = Integer.parseInt(request.getParameter("quantity"));
            String cust_type1 = request.getParameter("cust_type");
            
            //Determine customer..
            if(cust_type1.equals("1") && quantity1 > 100) {
            out.print("You're entitle " + "10%");%> <br> <%
                out.print("Total amount is RM" + quantity1*price*0.9);
            } else if (cust_type1.equals("2") && quantity1>100) {
                out.print("You're entitle " + "25%");%> <br> <%
                    out.print("Total amount is RM" + quantity1*price*0.75);
                } else {
                    out.print("You're not entitle discount..!");%><br> <%
                        out.print("Total amount is RM" + quantity1*price);
                    }
        %>
    </body>
</html>
