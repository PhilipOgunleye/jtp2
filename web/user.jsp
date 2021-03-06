<%-- 
    Document   : User
    Created on : 18-Apr-2015, 1:23:20 PM
    Author     : philip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new Users</title>
    </head>
    <body>
        <form method="POST" action='UserController' name="frmAddUser">
            <% String action = request.getParameter("action");
                System.out.println(action);
            %>
            <% if (action.equalsIgnoreCase("edit")) {%>
            User Name : <input type="text" name="username"
                               value="<c:out value="${user.username}" />" readonly="readonly"/> (You Can't Change this)<br /> 
            <%} else {%>
            User Name : <input type="text" name="username"
                               value="<c:out value="${user.username}" />" /> <br />
            <%}%>
            Password : <input
                type="password" name="pass"
                value="<c:out value="${user.password}" />" /> <br /> 
            Email : <input
                type="text" name="email"
                value="<c:out value="${user.email}" />" /> <br /> 
 
            <% if (action.equalsIgnoreCase("edit")) {%>
            Registration : <input
                type="text" name="dob"
                value="<fmt:formatDate pattern="yyyy/MM/dd" value="${user.registeredon}" />" readonly="readonly"/>(You Can't Change this)  <br />
            <%} else {%>
            Registration : <input
                type="text" name="dob"
                value="<fmt:formatDate pattern="yyyy/MM/dd" value="${user.registeredon}" />" />(yyyy/MM/dd)  <br /> 
            <%}%>
            <input  type="submit" value="Submit" />
        </form>
    </body>
</html>
