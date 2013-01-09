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
        stmt.execute("DELETE FROM seapal.bootinfo WHERE bnr = " + request.getParameter("bnr") + ";");

        con.close();

        json.put("bnr", "ok");
        response.getWriter().write(json.toString());

    } catch (Exception e) {
        json.put("bnr", "Error: " + e);
        response.getWriter().write(json.toString());
    }

%>