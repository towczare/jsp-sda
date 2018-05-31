<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">

        <h2>Search params:</h2>

        <ul>
            <li>Search phrase: <b><%=request.getParameter("query")%></b></li>
            <li>Search page: <b><%=request.getParameter("page")%></b></li>
            <li>Search sort: <b><%=("desc".equals(request.getParameter("sort")) ? "desc" : "asc")%></b></li>
        </ul>

    </body>
</html>
