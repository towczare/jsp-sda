<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: hotpink; margin:10px">
        <jsp:useBean id="tweet" class="foo.bar.Tweet" scope="session">
        </jsp:useBean>
        <jsp:setProperty property="*" name="tweet"/>

        <p>Tweet content:
            <jsp:getProperty name = "tweet" property = "content"/>
        </p>

        <p>Tweet author:
            <jsp:getProperty name = "tweet" property = "author"/>
        </p>

    </body>
</html>
