<%-- 
    Document   : jspParameter
    Created on : 1 May 2024, 9:55:27 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action</title>
    </head>
    <body>
        <h1>Using jsp:include and jsp:param to display information on JSP page</h1>
        
        <%
            String sCode = "CSF3107";
            String sSubject = "Web Programming 2";
            String sCredit = "3(2+1)";
        %>
        
        <!-- Call subjectInfo.jsp page & passing course information
                to respective parameters-->
        <jsp:include page="subjectInfo.jsp" flush="true">

            <jsp:param name="code" value="<%=sCode%>"/>
            <jsp:param name="subject" value="<%=sSubject%>"/>
            <jsp:param name="credit" value="<%=sCredit%>"/>
        </jsp:include>
    </body>
</html>
