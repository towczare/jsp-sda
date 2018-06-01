<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<%
    Cookie title = new Cookie("lastTitleYouSearch", request.getParameter("title"));
    // Set expiry date after 24 Hrs for both the cookies.
    title.setMaxAge(30*1*1);
    response.addCookie(title);
%>

<html>
    <body style="background-color: orange">

        <h2>Movie search params:</h2>

        <ul>
            <li>Search title: <b><%=request.getParameter("title")%></b></li>
            <li>Search sort: <b><%=("desc".equals(request.getParameter("sort")) ? "desc" : "asc")%></b></li>
            <li><a href="index.jsp">MENU</a></li>
            <li><a href="index.jsp">Search again</a></li>
        </ul>

    </body>
</html>
