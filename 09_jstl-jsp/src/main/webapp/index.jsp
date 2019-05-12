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
<%--        <h1>JSTL Examples</h1>--%>

<%--        <h2>List of Query Parameters:</h2>--%>
<%--        &lt;%&ndash;--%>
<%--        Set your URL with ?foo=bar to see output!--%>
<%--        &ndash;%&gt;--%>
<%--        <table class="w3-table w3-bordered w3-striped">--%>
<%--            <c:forEach var="element" items="${param}">--%>
<%--                <tr>--%>
<%--                    <td>${element.key}</td>--%>
<%--                    <td>--%>
<%--                        <c:out value="${element.value}"/>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--        </table>--%>

<%--        <h2>List of Header Parameters:</h2>--%>
<%--        <table class="w3-table w3-bordered w3-striped">--%>
<%--            <c:forEach var="element" items="${header}">--%>
<%--                <tr>--%>
<%--                    <td>${element.key}</td>--%>
<%--                    <td>--%>
<%--                        <c:out value="${element.value}"/>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--        </table>--%>

<%--        <h2>List of Cookies: </h2>--%>
<%--        <table class="w3-table w3-bordered w3-striped">--%>
<%--            <c:forEach var="element" items="${cookie}">--%>
<%--                <tr>--%>
<%--                    <td>${element.key}</td>--%>
<%--                    <td>--%>
<%--                        <c:out value="${element.value}"/>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--        </table>--%>

        <h2>Image requester:</h2>

        <form action="my-images.jsp" method="get">
            <table class="w3-table w3-bordered w3-striped">
                <tr>
                    <td>Size of single image?</td>
                    <td><input type="number" step="1" value="200" name="sizeX"/> x <input type="number" step="1" value="300" name="sizeY"/></td>
                </tr>

                <tr>
                    <td>How many images?</td>
                    <td><input type="number" step="1"  name="numberOfImages"/></td>
                </tr>

                <tr>
                    <td>Opacity</td>
                    <td>
                        <select name="opacity">
                            <option value="">No opacity</option>
                            <option value="w3-opacity-min">Min opacity</option>
                            <option value="w3-opacity">Normal opacity</option>
                            <option value="w3-opacity-max">Max opacity</option>
                        </select>
                    </td>
                </tr>

            </table>
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>

