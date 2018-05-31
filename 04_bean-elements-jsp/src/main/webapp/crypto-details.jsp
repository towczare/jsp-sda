<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: hotpink; margin:10px">
        <jsp:useBean id="crypto" class="foo.bar.Cryptocurrency" scope="session">
        </jsp:useBean>
        <jsp:setProperty property="*" name="crypto"/>

        <p>Crypto name:
            <jsp:getProperty name = "crypto" property = "name"/>
        </p>

        <p>Crypto symbol:
            <jsp:getProperty name = "crypto" property = "symbol"/>
        </p>

        <p>Crypto price:
            <jsp:getProperty name = "crypto" property = "price"/>
        </p>
    </body>
</html>
