<%@ page import="java.sql.*" %>
<%@ page import="org.json.simple.JSONObject" %>

<%! Statement stmt;
    Connection con;
    String url = "jdbc:mysql://localhost:3306";
    String tnr;
%>

<%
    try {
        tnr = request.getParameter("tnr");

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "root");

        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM seapal.tripinfo WHERE tnr = " + tnr);

        JSONObject respJSON = new JSONObject();

        java.sql.ResultSetMetaData rsmd = rs.getMetaData();
        int numColumns = rsmd.getColumnCount();

        while (rs.next()) {
            for (int i = 1; i < numColumns + 1; i++) {
                String columnName = rsmd.getColumnName(i);
                respJSON.put(columnName, rs.getString(i));
            }
        }
        con.close();

        response.getWriter().write(respJSON.toString());

    } catch (Exception e) {
        out.print(e);
    }
    
%>