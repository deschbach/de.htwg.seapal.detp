<%@ page import="java.sql.*" %>
<%@ page import="org.json.simple.JSONObject" %>

<%! Statement stmt;
    Connection con;
    String url = "jdbc:mysql://localhost:3306";
    JSONObject json = new JSONObject();
%>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "root");

        stmt = con.createStatement();
        stmt.execute("DELETE FROM seapal.tripinfo WHERE tnr = " + request.getParameter("tnr") + ";");

        con.close();

        json.put("tnr", "ok");
        response.getWriter().write(json.toString());

    } catch (Exception e) {
        json.put("tnr", "Error: " + e);
        response.getWriter().write(json.toString());
    }

%>