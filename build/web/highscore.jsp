<%
// se om attributten "logget ind" er sat i sessionen
if (session.getAttribute("logget ind") == null) {
// brugeren er ikke logget ind, så send ham tilbage til login-siden
response.sendRedirect("index.jsp");
}
%>
<html>
<head><title>login3</title></head>
<body>
<h1>Den beskyttede side</h1>
Denne tekst kan du kun se, hvis du er logget korrekt på.
</body>
</html>