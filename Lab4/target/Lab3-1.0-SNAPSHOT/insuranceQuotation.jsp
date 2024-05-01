<%-- 
    Document   : insuranceQuotation
    Created on : 1 May 2024, 11:15:46 pm
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
        <h1>Insurance Quotation</h1>
        <fieldset>
            <legend>Insurance Calculation</legend>
            <form id="insuranceQuotation" action="processInsuranceQuo.jsp" method ="post">
                <table>
                    <tr>
                        <td><label>ICNo <span style="color: red;">*</span></label></td>
                        <td>
                            <input type="text" id="icno" name="icno" size="20" placeholder="E.g 821210-05-3456" required/>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Name <span style="color: red;">*</span></label></td>
                        <td>
                            <input type="text" id="name" name="name" size="35" placeholder="Enter name" required/>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Market Price <span style="color: red;">*</span></label></td>
                        <td>
                            <input type="text" id="price" name="price" size="15" placeholder="Price" required/>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Coverage Type </label></td>
                        <td>
                            <select name="coverage" id="coverage" size="1">
                                <option value ="1">Third Party</option>
                                <option value ="2">Comprehensive</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><label>No claims discount (NCD) </label></td>
                        <td>
                            <select name="discount" id="discount" size="1">
                                <option value ="1">10%</option>
                                <option value ="2">25%</option>
                                <option value ="3">35%</option>
                                <option value ="4">55%</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="submit" id="btnSubmit" value="Submit"/>
                            <input type="reset" id="btnCancel" value="Cancel"/>
                        </td>
                    </tr>
                </table>
            </form>
        </fieldset>
        
        <footer><br>&copy;2024-Adilah Ainaa</footer>
    </body>
</html>
