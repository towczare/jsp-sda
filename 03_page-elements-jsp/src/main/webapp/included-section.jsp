<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<div style="background-color: aqua; margin:10px">
    <h2>Hello from included-section.jsp! I like aqua</h2>
        <p style="background-color: orange; margin:10px">${param.giftFromIndexJsp}</p>
    <h2>Good bye from included-section.jsp!</h2>
</div>