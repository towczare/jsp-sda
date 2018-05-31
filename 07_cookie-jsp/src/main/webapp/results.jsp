<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">

        <h2>Movie earch params:</h2>

        <ul>
            <li>Search title: <b><%=request.getParameter("title")%></b></li>
            <li>Search sort: <b><%=("desc".equals(request.getParameter("sort")) ? "desc" : "asc")%></b></li>
            <li>Cookies:
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
                </ul>

            </li>
        </ul>

    </body>
</html>
