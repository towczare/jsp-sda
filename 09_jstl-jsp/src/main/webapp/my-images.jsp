<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="foo.bar.RandomIndex" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>

    <h2>Your requested <c:out value="${param.numberOfImages}" /> images</h2>
    <h3>You requested images with size ${param.sizeX} x ${param.sizeY}</h3>

    <c:forEach var="element" begin="1" end="${param.numberOfImages}" >
        <c:set var = "index" scope="page" value="<%= RandomIndex.next() %>"/>
        <img src="https://picsum.photos/${param.sizeX}/${param.sizeY}?image=${index}&blur=5" class="${param.opacity}"/>
    </c:forEach>





    <a href="index.jsp">Order new images!</a>
</body>

