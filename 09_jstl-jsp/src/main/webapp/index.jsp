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
    <h1>JSTL Examples</h1>

    <h2>List of Query Parameters:</h2>
    <%--
    Set your URL with ?foo=bar to see output!
    --%>
    <table class="w3-table w3-bordered w3-striped">
        <c:forEach  var="entry" items="${param}">
            <tr>
                <td>${entry.key}</td>
                <td>
                    <c:out value="${entry.value}"/>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2>List of Header Parameters:</h2>
    <table class="w3-table w3-bordered w3-striped">
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
    <table class="w3-table w3-bordered w3-striped">
        <c:forEach var="entry" items="${cookie}">
            <tr>
                <td>${entry.key}</td>
                <td>
                    <c:out value="${entry.value}"/>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2>Image requester:</h2>

    <form action="my-images.jsp" method="post">
        <table class="w3-table w3-bordered w3-striped">
            <tr>
                <td>How many images?</td>
                <td><input type="number" step="1"  name="numberOfImages"/></td>
            </tr>
        </table>
        <input type="submit" value="Submit" />
    </form>

</body>

</html>

