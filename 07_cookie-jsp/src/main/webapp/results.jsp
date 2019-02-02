<%@ page import="java.time.Instant" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>


<%
    // Create
    Cookie lastSearchTitle = new Cookie("lastSearchTitle", request.getParameter("title"));
    // Set expiry date after 24 Hrs for both the cookies.
    lastSearchTitle.setMaxAge(60);
    response.addCookie(lastSearchTitle);
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

        <h2>Cookies:</h2>
        <%
            Cookie cookie = null;
            Cookie[] cookies = null;

            // Get an array of Cookies associated with the this domain
            cookies = request.getCookies();

            if( cookies != null ) {
                for (int i = 0; i < cookies.length; i++) {
                    cookie = cookies[i];
                    out.print("<li>Name : " + cookie.getName( ) + ",  ");
                    out.print("Value: " + cookie.getValue( )+" </li>");
                }
            } else {
                out.println("<li>No cookies founds</li>");
            }
        %>

    </body>
</html>
