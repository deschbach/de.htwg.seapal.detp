<%@ page import="java.sql.*" %>
<%@ page import="org.json.simple.JSONObject" %>

<%! Statement stmt;
    Connection con;
    String url = "jdbc:mysql://localhost:3306";
    JSONObject json = new JSONObject();
    int nextId;
%>

<%
    try {

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "root");

        stmt = con.createStatement();
        stmt.execute("INSERT INTO seapal.bootinfo(bootname, registernummer, segelzeichen, heimathafen, yachtclub, eigner, versicherung,"
                + "rufzeichen, typ, konstrukteur, laenge, breite, tiefgang, masthoehe, verdraengung, rigart,"
                + "baujahr, motor, tankgroesse, wassertankgroesse, abwassertankgroesse, grosssegelgroesse,"
                + "genuagroesse, spigroesse) "
                + "VALUES('" + request.getParameter("bootname") + "',"
                + "'" + request.getParameter("registernummer") + "',"
                + "'" + request.getParameter("segelzeichen") + "',"
                + "'" + request.getParameter("heimathafen") + "',"
                + "'" + request.getParameter("yachtclub") + "',"
                + "'" + request.getParameter("eigner") + "',"
                + "'" + request.getParameter("versicherung") + "',"
                + "'" + request.getParameter("rufzeichen") + "',"
                + "'" + request.getParameter("typ") + "',"
                + "'" + request.getParameter("konstrukteur") + "',"
                + "'" + request.getParameter("laenge") + "',"
                + "'" + request.getParameter("breite") + "',"
                + "'" + request.getParameter("tiefgang") + "',"
                + "'" + request.getParameter("masthoehe") + "',"
                + "'" + request.getParameter("verdraengung") + "',"
                + "'" + request.getParameter("rigart") + "',"
                + "'" + request.getParameter("baujahr") + "',"
                + "'" + request.getParameter("motor") + "',"
                + "'" + request.getParameter("tankgroesse") + "',"
                + "'" + request.getParameter("wassertankgroesse") + "',"
                + "'" + request.getParameter("abwassertankgroesse") + "',"
                + "'" + request.getParameter("grosssegelgroesse") + "',"
                + "'" + request.getParameter("genuagroesse") + "',"
                + "'" + request.getParameter("spigroesse") + "');");
        
        ResultSet rs = stmt.executeQuery("SHOW TABLE STATUS FROM seapal LIKE 'bootinfo'");
        if (rs.next()) {
            nextId = rs.getInt("Auto_increment");
        }
        con.close();

        json.put("bnr", "" + (nextId - 1));
        response.getWriter().write(json.toString());

    } catch (Exception e) {
        json.put("bnr", "Error: " + e);
        response.getWriter().write(json.toString());
    }

%>