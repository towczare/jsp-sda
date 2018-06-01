<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">

        <h2>All cookies:</h2>

        <ul>
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
            <li><a href="index.jsp">MENU</a></li>
        </ul>

    </body>
</html>
