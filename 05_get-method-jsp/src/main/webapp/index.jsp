<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>
<%@ page import="java.lang.Integer" %>

<%! private int pageValue = 0; %>

<html>
    <body style="background-color: orange">

        <h2>Search params:</h2>

        <ul>
            <li>Search phrase: <b>${param.get("query")}</b></li>

            <%
                String pageParamValue = request.getParameter("page");
                try {
                    pageValue = Integer.parseInt(pageParamValue);
                } catch(java.lang.NumberFormatException ex) {
                    pageValue = 0;
                }
            %>

            <li>Search page: <b><%= pageValue %></b></li>
            <li>Search sort: <b>${("desc".equals(param.get("sort")) ? "desc" : "asc")}</b></li>
            <% String category = request.getParameter("category");
                if(category != null) {
                    String[] split = category.split(",");
                    for(String cat : split) {
            %>
            <li>Category: <b><%= cat %></b></li>
            <%
                    }
                }
            %>
        </ul>
    </body>
</html>
