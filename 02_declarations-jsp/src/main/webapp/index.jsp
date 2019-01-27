<%@ page import="foo.bar.CoinSide" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<%! private long visitCount = 0; %>

<html>
<body>
<h2>Hello again! </h2>
<p>This is <b><%= ++visitCount %></b> time I see you :-)</p>

<!-- Comments in HTML -->
<%-- Comments in JSP --%>
<p>Flipping the coin <b><%= CoinSide.flipCoin() %></b></p>
<p><% out.println("COkolwiek"); %></p>
<p><% out.println(CoinSide.drawNumbers()); %></p>

</body>
</html>
