<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>
<%@ page import = "java.util.Date" %>
<%@ page import="java.util.UUID" %>
<%
    // Get session creation time.
    Date createTime = new Date(session.getCreationTime());

    // Get last access time of this Webpage.
    Date lastAccessTime = new Date(session.getLastAccessedTime());

    //Inactive interval
    int maxInactiveInterval = session.getMaxInactiveInterval();

    String title = "Welcome Back to my website";
    Integer visitCount = new Integer(0);
    String visitCountKey = new String("visitCount");
    String userIDKey = new String("userID");
    String remoteIpAddressKey = new String("ip");
    String userAgentKey = new String("userAgent");
    String userID = UUID.randomUUID().toString();

    // Check if this is new comer on your Webpage.
    if (session.isNew() ){
        session.setAttribute(userIDKey, userID);
        session.setAttribute(visitCountKey,  visitCount);
        session.setAttribute(userAgentKey,  request.getHeader("User-Agent"));
        session.setAttribute(remoteIpAddressKey,  request.getRemoteAddr());
    }
    visitCount = (Integer)session.getAttribute(visitCountKey);
    visitCount = visitCount + 1;
    userID = (String)session.getAttribute(userIDKey);
    String userAgent = (String)session.getAttribute(userAgentKey);
    String ip = (String)session.getAttribute(remoteIpAddressKey);
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
    <tr>
        <td>Max inactive interval</td>
        <td><%= maxInactiveInterval %></td>
    </tr>
    <tr>
        <td>Browser agent</td>
        <td><%= userAgent %></td>
    </tr>
    <tr>
        <td>Remote ip address</td>
        <td><%= ip %></td>
    </tr>
</table>

</body>
</html>