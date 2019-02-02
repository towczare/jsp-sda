<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>
<%@ page import="foo.bar.Category" %>


<html>
    <body style="background-color: orange">

        <h2>Search params:</h2>

        <form action="results.jsp" method="POST" >
            Title: <input type="text" name="title"/><br/>
            Sorting:
            <select name="sort">
                <option value="asc">ascending</option>
                <option value="desc">descending</option>
            </select>

            <select name="category">
            <%
                for(Category cat : Category.values()) {
                    %>
                        <option value="<%=cat%>"><%=cat%></option>
                    <%
                }
            %>
            </select>

            <button type="sumbit" >Search</button>
        </form>
    </body>
</html>
