<html>
<title>Today is...</title>
<body>
<p>Today is <%= java.time.LocalDate.now().toString() %></p>
<%-- Note no semicolon in end of expression! --%>
</body>
</html>
