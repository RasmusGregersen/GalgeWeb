<%@page import="java.net.MalformedURLException"%>
<%@page import="java.net.URL"%>
<%@page import="java.rmi.Naming"%>
<%@page import="java.rmi.NotBoundException"%>
<%@page import="java.rmi.RemoteException"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="javax.xml.ws.Service"%>
<%@page import="galgeleg.GalgelegI"%>

<html>
<head><title>login2</title></head>
<body>
<% 
URL url = new URL("http://localhost:18371/galgeservice?wsdl");
QName qname = new QName("http://galgeleg/", "GalgelogikService");
Service service = Service.create(url, qname);
GalgelegI g = service.getPort(GalgelegI.class);

// hvis brugernavn="Jacob" og adgangskode="hemli" logges der ind.
// dette burde selvfølgelig hentes fra en database eller lign.
if (g.login(request.getParameter("brugernavn"),request.getParameter("adgangskode"))) {
// sæt attributten "logget ind" i sessionen
session.setAttribute("logget ind", "ja");
session.setAttribute("brugernavn", request.getParameter("brugernavn"));
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
Du kan nu prøve at gå videre til <a href="highscore.jsp">den beskyttede side</a>
eller gå tilbage og logge ind igen.
</body>
</html>
