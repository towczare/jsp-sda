<%@ page import="foo.bar.Color" %>
<%@ page import="foo.bar.Quote" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">
        <h2>Hello from index.jsp! </h2>

        <%--<jsp:forward page="forward-destination.jsp" />--%>

        <%--<jsp:include page="included-section.jsp"/>--%>

        <%--<jsp:forward page="forward-destination.jsp" >--%>
            <%--<jsp:param name="giftFromIndexJsp" value="gold" />--%>
        <%--</jsp:forward>--%>

        <%--<jsp:include page="included-section.jsp">--%>
            <%--<jsp:param name="giftFromIndexJsp" value="silver" />--%>
        <%--</jsp:include>--%>

        <h2>Good bye from index.jsp! </h2>

    </body>
</html>
