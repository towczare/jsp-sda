<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
  <title>Your figure!</title>
    <style type="text/css">
        .square {
            height: 50px;
            width: 50px;
            margin: 5px;
        }
    </style>
</head>

<body>

    <h2>Your requested <c:out value="${param.numberOfFigures}" /> <c:out value="${param.shapes}" />s</h2>

    <c:forEach begin="1" end="${param.numberOfFigures}" >
        <div style="background-color:<c:out value="${param.figureColor}"/>;height:<c:out value="${param.figureSize}"/>px;
                width:<c:out value="${param.figureSize}"/>px;margin:5px;"></div>
    </c:forEach>
    <a href="index.jsp">new figure</a>
</body>

