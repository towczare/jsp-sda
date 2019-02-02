<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="java.util.UUID" %>

<%
    // Create
    Cookie searchId = new Cookie("searchId", UUID.randomUUID().toString());
    // Set expiry date after 24 Hrs for both the cookies.
    searchId.setMaxAge(10);
    response.addCookie(searchId);
%>

<html>
    <body style="background-color: orange">

        <h2>Search params:</h2>

        <form action="results.jsp" method="POST" >
            Title: <input type="text" name="title"/><br/>
            Sorting:
            <select name="sort">
                <option value="asc">ascending</option>
                <option value="desc">descending</option>
            </select><br/>
            <button type="sumbit">Search</button>
            <li><a href="index.jsp">MENU</a></li>

        </form>
    </body>
</html>
