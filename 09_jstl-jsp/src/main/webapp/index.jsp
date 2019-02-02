<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="foo.bar.Category" %>
<%@ page import="foo.bar.Sephia" %>
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

    <h2>Draw squares:</h2>

    <form action="my-images.jsp" method="post">
        <table class="w3-table w3-bordered w3-striped">
            <tr>
                <td>How many images?</td>
                <td><input type="number" step="1"  name="numberOfImages"/></td>
            </tr>

            <tr>
                <td>
                    <select name="sephia">
                        <c:forEach var="sephia" items="${Sephia.values()}">
                            <option value="${sephia.getCssClass()}" ><c:out value="${sephia}" /></option>
                        </c:forEach>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Category:</td>
                <td>
                    <select name="category">
                        <c:forEach var="cat" items="${Category.values()}">
                            <c:choose>
                                <c:when test="${cat.isAdult()}">
                                    <option value="${cat}" ><c:out value="***${cat}***" /></option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${cat}" ><c:out value="${cat}" /></option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </td>
            </tr>


        </table>
        <input type="submit" value="Submit" />
    </form>

</body>

</html>

