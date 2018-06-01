<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>
<%@ page import = "java.util.Date" %>
<%@ page import="java.util.UUID" %>
<%
    // Get session creation time.
    Date createTime = new Date(session.getCreationTime());

    // Get last access time of this Webpage.
    Date lastAccessTime = new Date(session.getLastAccessedTime());

    Integer visitCount = new Integer(0);
    String visitCountKey = new String("visitCount");
    String userIDKey = new String("userID");
    String userID = UUID.randomUUID().toString();

    // Check if this is new comer on your Webpage.
    if (session.isNew() ){
        session.setAttribute(userIDKey, userID);
        session.setAttribute(visitCountKey,  visitCount);
    }
    visitCount = (Integer)session.getAttribute(visitCountKey);
    visitCount = visitCount + 1;
    userID = (String)session.getAttribute(userIDKey);
    session.setAttribute(visitCountKey,  visitCount);
%>

<html>
<head>
    <title>Session Tracking</title>
</head>

<body>

<h1>Session Tracking</h1>

<table border = "1" align = "center">
    <tr bgcolor = "#949494">
        <th>Session info</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>id</td>
        <td><%= session.getId() %></td>
    </tr>
    <tr>
        <td>Creation Time</td>
        <td><%= createTime %></td>
    </tr>
    <tr>
        <td>Time of Last Access</td>
        <td><%= lastAccessTime %></td>
    </tr>
    <tr>
        <td>User ID</td>
        <td><%= userID %></td>
    </tr>
    <tr>
        <td>Number of visits</td>
        <td><%= visitCount %></td>
    </tr>
</table>

</body>
</html>