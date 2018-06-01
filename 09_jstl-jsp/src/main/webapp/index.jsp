<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<body>
    <h1>JSTL Examples</h1>

    <h2>List of Query Parameters:</h2>
    <%--
    Set your URL with ?foo=bar to see output!
    --%>
    <table>
        <c:forEach var="entry" items="${param}">
            <tr>
                <td>${entry.key}</td>
                <td>
                    <c:out value="${entry.value}"/>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2>List of Header Parameters:</h2>
    <table>
        <c:forEach var="entry" items="${header}">
            <tr>
                <td>${entry.key}</td>
                <td>
                    <c:out value="${entry.value}"/>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2>List of Cookies: </h2>
    <table class="table" class="table">
        <c:forEach var="entry" items="${cookie}">
            <tr>
                <td>${entry.key}</td>
                <td>
                    <c:out value="${entry.value}"/>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2>Draw squares:</h2>

    <form action="my-square.jsp" method="post">
        <table style="with: 50%">
            <tr>
                <td>How many?</td>
                <td><input type="number" step="1"  name="numberOfFigures"/></td>
            </tr>
            <tr>
                <td>Size (in px, default 50)</td>
                <td><input type="number" step="5"  name="figureSize"/></td>
            </tr>
            <tr>
                <td>Color</td>
                <td><input name="figureColor" type="color"></td>
            </tr></table>
        <input type="submit" value="Submit" /></form>
</body>

