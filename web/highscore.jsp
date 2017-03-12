<%@page import="java.net.MalformedURLException"%>
<%@page import="java.net.URL"%>
<%@page import="java.rmi.Naming"%>
<%@page import="java.rmi.NotBoundException"%>
<%@page import="java.rmi.RemoteException"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="javax.xml.ws.Service"%>
<%@page import="galgeleg.GalgelegI"%>

<%
// se om attributten "logget ind" er sat i sessionen
if (session.getAttribute("logget ind") == null) {
// brugeren er ikke logget ind, så send ham tilbage til login-siden
response.sendRedirect("index.jsp");
}
%>
<html>
<head><title>login3</title>
  <link rel="stylesheet" type="text/css" href="styles.css"
</head>
<body>
<p1>Her ses en specifik spillers historik</p1>

<%
URL url = new URL("http://localhost:18371/galgeservice?wsdl");
QName qname = new QName("http://galgeleg/", "GalgelogikService");
Service service = Service.create(url, qname);
GalgelegI g = service.getPort(GalgelegI.class);

session.setAttribute("vundneSpil", g.getWonGames());
session.setAttribute("tabteSpil", g.getLostGames());
%>
<table>
  <tr>
    <th>Spiller</th>
    <th>Vunde spil</th>
    <th>Tabte spil</th>
  </tr>
  <tr>
    <td>${sessionScope.brugernavn}</td>
    <td>${sessionScope.vundneSpil}</td>
    <td>${sessionScope.tabteSpil}</td>
  </tr>
</table>

</body>
</html>