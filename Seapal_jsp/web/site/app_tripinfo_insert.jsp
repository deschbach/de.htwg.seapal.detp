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
        stmt.execute("INSERT INTO seapal.wegpunkte(tnr, name, btm, dtm, lat, lng, sog, cog, manoever, vorsegel, wdate, wtime, marker) "
                + "VALUES('" + request.getParameter("tnr") + "',"
                + "'" + request.getParameter("name") + "',"
                + "'" + request.getParameter("btm") + "',"
                + "'" + request.getParameter("dtm") + "',"
                + "'" + request.getParameter("lat") + "',"
                + "'" + request.getParameter("lng") + "',"
                + "'" + request.getParameter("sog") + "',"
                + "'" + request.getParameter("cog") + "',"
                + "'" + request.getParameter("manoever") + "',"
                + "'" + request.getParameter("vorsegel") + "',"
                + "'" + request.getParameter("wdate") + "',"
                + "'" + request.getParameter("wtime") + "',"
                + "'" + request.getParameter("marker") + "');");

        ResultSet rs = stmt.executeQuery("SHOW TABLE STATUS FROM seapal LIKE 'wegpunkte'");
        if (rs.next()) {
            nextId = rs.getInt("Auto_increment");
        }

        con.close();

        json.put("wnr", "" + (nextId - 1));
        response.getWriter().write(json.toString());

    } catch (Exception e) {
        json.put("wnr", "Error: " + e);
        response.getWriter().write(json.toString());
    }

%>