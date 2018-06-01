<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
