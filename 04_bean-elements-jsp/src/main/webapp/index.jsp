<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">

        <h2>Provide cryptocurrency data:</h2>

        <form action="crypto-details.jsp" method="post">
            Crypto name: <input type="text" name="name"><br>
            Crypto symbol: <input type="text" maxlength="20"  style="text-transform:uppercase" name="symbol"><br>
            Crypto price: <input type="number" step="0.01" name="price"><br>
            <input type="submit" value="See details">
        </form>

        <form action="tweet-details.jsp" method="post">
            Tweet content: <textarea maxlength="160" name="content" ></textarea>
            Author: <input type="text" name="author" /><br>
            <input type="submit" value="See your tweet">
        </form>
    </body>
</html>
