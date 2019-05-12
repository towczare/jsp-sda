<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

    <body>
        <h1>JSTL Demo</h1>

        <c:forEach var="element" begin="1" step="1" end="10">
            <c:if test="${element%2 == 0}">
                <h1>${element}</h1>
            </c:if>

            <c:choose>
                <c:when test="${element %2 == 0}">
                    <h1>${element} jest podzielny przez 2</h1>
                </c:when>
                <c:otherwise>
                    <h1>${element} nie jest podzielny przez 2</h1>
                </c:otherwise>
            </c:choose>
        </c:forEach>

    </body>
</html>

