<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">

        <h2>Tweet:</h2>

        <form action="pigeon-tweet.jsp" method="post">
            Content: <textarea name="content" maxlength="160"></textarea><br>
            Author: <input type="text" maxlength="50"  style="text-transform:uppercase" name="author" /><br>
            <input type="submit" value="See details">
        </form>
    </body>
</html>
