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
        stmt.execute("DELETE FROM seapal.wegpunkte WHERE wnr = " + request.getParameter("wnr") + ";");

        con.close();

        json.put("wnr", "ok");
        response.getWriter().write(json.toString());

    } catch (Exception e) {
        json.put("wnr", "Error: " + e);
        response.getWriter().write(json.toString());
    }

%>