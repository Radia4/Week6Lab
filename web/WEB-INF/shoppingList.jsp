<%-- 
    Document   : shoppingList
    Created on : Feb 13, 2023, 11:53:33 PM
    Author     : radia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <br>
        <p>Hello, ${username} 
            <a href="?action=logout">Logout</a></p>
        <br>
        <p><h3>List</h3></p>
    
        <form action="" method="POST">
            <h2>Add Items</h2>
            <input type="text" name="item">
            <input type="submit" value="Add Item">
            <input type="hidden" name="action" value="add">
        </form>
    
        <form action="" method="POST">
            <c:forEach var="item" items="${items}">
                    <br> 
                        <input type="radio" name="${item}" value="${item}">${item}
                    </br>
                </c:forEach>
            <button type="submit">Delete</button>
            <input type="hidden" name="action" value="delete">
        </form>
    </body>
</html>
