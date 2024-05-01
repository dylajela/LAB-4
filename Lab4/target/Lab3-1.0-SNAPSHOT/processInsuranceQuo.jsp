<%-- 
    Document   : processInsuranceQuo
    Created on : 2 May 2024, 12:02:03 am
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String icNo1 = request.getParameter("icno"); // Corrected parameter name
            String name1 = request.getParameter("name");
            String coverage1 = request.getParameter("coverage");
            String operation = "+"; 

            String NCDpercent = "";

            double insurance = 0.00;

            final double GST = 57.60;

            char operationChar = operation.charAt(0); 
            operation = request.getParameter("discount"); 
            operationChar = operation.charAt(0); 

            int price1 = Integer.parseInt(request.getParameter("price"));
           
            if (coverage1.equals("2")) {
            
                switch(operationChar) {
                case '0' :
                    NCDpercent = "10%";
                    insurance = (double)(price1*(3.8/100));
                    break;
                case '1' :
                    NCDpercent = "25%";
                    insurance = (double)(price1*(3.0/100));
                    break;
                case '2' :
                    NCDpercent = "35%";
                    insurance = (double)(price1*(2.4/100));
                    break;
                    
                case '3' :
                    NCDpercent = "55%";
                    insurance = (double)(price1*(1.8/100));
                    break;
                }//end switch
            } //end if
            else if (coverage1.equals("1")) {
                switch(operationChar) {
                case '0' :
                    NCDpercent = "10%";
                    insurance = (double)(price1*(3.3/100));
                    break;
                case '1' :
                    NCDpercent = "25%";
                    insurance = (double)(price1*(2.5/100));
                    break;
                case '2' :
                    NCDpercent = "35%";
                    insurance = (double)(price1*(1.8/100));
                    break;
                    
                case '3' :
                    NCDpercent = "55%";
                    insurance = (double)(price1*(3.3/100));
                    break;
                }//end switch
            }
            
            String coverageName = "";
            if (coverage1.equals("1"))
                coverageName="Third Party";
            else if (coverage1.equals("2"))
                coverageName="Comprehensive";
        %>

        <fieldset>
            <legend>Details of Insurance Quotation</legend>
            <table>
                <% DecimalFormat df = new DecimalFormat("0.00"); %>

                <p style="color:blueviolet;">IC No : <%=icNo1%></p>
                <p style="color:blueviolet;">Customer Name : <%=name1%></p>
                <p style="color:blueviolet;">Market Price : <%=price1%></p>
                <p style="color:blueviolet;">Coverage Type: <%=coverageName%></p>
                <p style="color:blueviolet;">No claim discount (NCD) : <%=NCDpercent%></p>
                <p style="color:blueviolet;">Insurance amount : <%= df.format(insurance) %></p>
                <p style="color:blueviolet;">6% GST : <%= df.format(GST) %></p>
                <p style="color:blueviolet;">Final amount (with 6% GST) : <%= df.format(insurance + GST) %></p>
            </table>
        </fieldset>
    </body>
</html>
