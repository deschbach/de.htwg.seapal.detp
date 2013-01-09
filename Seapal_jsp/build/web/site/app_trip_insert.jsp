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
        stmt.execute("INSERT INTO seapal.tripinfo(titel, von, nach, skipper, crew, tstart, tende, tdauer, motor, tank) "
                + "VALUES('" + request.getParameter("titel") + "',"
                + "'" + request.getParameter("von") + "',"
                + "'" + request.getParameter("nach") + "',"
                + "'" + request.getParameter("skipper") + "',"
                + "'" + request.getParameter("crew") + "',"
                + "'" + request.getParameter("tstart") + "',"
                + "'" + request.getParameter("tende") + "',"
                + "'" + request.getParameter("tdauer") + "',"
                + "'" + request.getParameter("motor") + "',"
                + "'" + request.getParameter("tank") + "');");

        ResultSet rs = stmt.executeQuery("SHOW TABLE STATUS FROM seapal LIKE 'tripinfo'");
        if (rs.next()) {
            nextId = rs.getInt("Auto_increment");
        }

        con.close();

        json.put("tnr", "" + (nextId - 1));
        response.getWriter().write(json.toString());

    } catch (Exception e) {
        json.put("tnr", "Error: " + e);
        response.getWriter().write(json.toString());
    }

%>