<html>
<head><title>login2</title></head>
<body>
<%
// hvis brugernavn="Jacob" og adgangskode="hemli" logges der ind.
// dette burde selvf�lgelig hentes fra en database eller lign.
if ("Jacob".equals(request.getParameter("brugernavn")) &&
 "hemli".equals(request.getParameter("adgangskode")))
{
// s�t attributten "logget ind" i sessionen
session.setAttribute("logget ind", "ja");
out.println("Du er logget korrekt ind.");
response.sendRedirect("highscore.jsp");
}
else
{
// fjern attributten "logget ind" fra sessionen
session.removeAttribute("logget ind");
out.println("Forkert brugernavn eller adgangskode.");
response.sendRedirect("index.jsp");
}
%>
Du kan nu pr�ve at g� videre til <a href="highscore.jsp">den beskyttede side</a>
eller g� tilbage og logge ind igen.
</body>
</html>
