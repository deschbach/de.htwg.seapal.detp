<!DOCTYPE html>

<%@ page import="java.sql.*" %>

<html lang="de">
    <head>

        <!-- Header -->
        <%@ include file="_include/header.jsp" %>

    </head>
    <body>

        <!-- Navigation -->
        <%@ include file="_include/navigation.jsp" %>

        <!-- Container -->
        <div class="container-fluid">

            <!-- App Navigation -->
            <%@ include file="_include/navigation_app.jsp" %>

            <!-- Content -->
            <div id="appWrapper" align="center">
                <br />
                <h2>Routen Informationen</h2>
                <br />
                <br />
                <br />
                <div class="container-fluid" align="center">
                    <form class="form-horizontal"> 
                        <div class="row well" style="margin-left: 15%;" align="center">
                            <div class="span4" align="center">	            		
                                <div class="control-group">
                                    <label class="control-label">Name</label>
                                    <input class="input-medium" type="text" id="name"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Time</label>
                                    <input class="input-medium" type="date" id="wdate"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Date</label>
                                    <input class="input-medium" type="date" id="wtime"/>
                                </div>
                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">Latitude</label>
                                    <input class="input-medium" type="text" id="lat"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Longitude</label>
                                    <input class="input-medium" type="text" id="lng"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Fahrt nach</label>
                                    <select name="fahrtziel" id="marker" style="width: 165px;"></select>
                                </div>
                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">COG</label>
                                    <input class="input-medium" type="text" id="cog"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">SOG</label>
                                    <input class="input-medium" type="text" id="sog"/>
                                </div>  
                                <div class="control-group">
                                    <label class="control-label">Manoever</label>
                                    <select name="manoever" id="manoever" style="width: 165px;"></select>
                                </div>                 
                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">BTM</label>
                                    <input class="input-medium" type="text" id="btm"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">DTM</label>
                                    <input class="input-medium" type="text" id="dtm"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Vorsegel</label>
                                    <select name="vorsegel" id="vorsegel" style="width: 165px;"></select>
                                </div>
                            </div>
                        </div>      	 
                        <div class="control-group">
                            <input type="reset" class="btn" id="delete" value="L&ouml;schen" class="button"/>
                            <input type="submit" class="btn" id="save" name="submit" value="Speichern" class="button"/>
                        </div>  
                </div>
            </div>
            <div class="appTableDiv" id="tripinfo" align="center">
                <table class="appTable table table-hover" cellspacing="0px" cellpadding="5px">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Breite</th>
                            <th>Laenge</th>
                            <th>Peilung</th>
                            <th>Abstand</th>
                            <th>Manoever</th>     
                            <th></th>
                        </tr>
                    </thead>
                    <tbody id="entries">

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
                                ResultSet result = stmt.executeQuery("SELECT * FROM seapal.wegpunkte WHERE tnr = " + tnr);

                                while (result.next()) {
                                    out.print("<tr class='selectable'>");
                                    out.print("<td><span class='wnr' style='display: none;'>" + result.getString("wnr")
                                            + "</span>" + result.getString("name") + "</td>");
                                    out.print("<td>" + result.getString("lat") + "</td>");
                                    out.print("<td>" + result.getString("lng") + "</td>");
                                    out.print("<td>" + result.getString("btm") + "</td>");
                                    out.print("<td>" + result.getString("dtm") + "</td>");
                                    out.print("<td>" + result.getString("manoever") + "</td>");
                        out.print("<td style='width:30px; text-align:right;'><div class='btn-group'>");
                        out.print("<a class='btn btn-small view' id='" + result.getString("wnr")
                                + "'><span><i class='icon-eye-open'></i></span></a>");
                        out.print("<a class='btn btn-small remove' id='" + result.getString("wnr")
                                + "'><span><i class='icon-remove'></i></span></a>");
                        out.print("<a href='app_waypoint.jsp?wnr=" + result.getString("wnr")
                                + "&tnr=" + tnr + "' class='btn btn-small redirect' id='" + result.getString("wnr")
                                + "'><span><i class='icon-chevron-right'></i></span></a>");
                        out.print("</div></td>");
                                    out.print("</tr>");
                                }

                                con.close();
                            } catch (Exception e) {
                                out.print(e);
                            }
                        %>

                    </tbody>
                </table>
            </div>
        </div><!-- Content -->

    </div><!-- Container -->

    <!-- Menu Modal -->
    <div class="modal hide fade" id="messageBox">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3 id="dialogTitle"></h3>
        </div>
        <div class="modal-body">
            <p id="dialogMessage"></p>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn" data-dismiss="modal"><i class="icon-ok"></i> ok</a>
        </div>
    </div>

    <!-- Java-Script -->
    <script src="../js/bootstrap/bootstrap-dropdown.js"></script>
    <script src="../js/bootstrap/bootstrap-button.js"></script>
    <script src="../js/bootstrap/bootstrap-modal.js"></script>
    <script src="../js/bootstrap/bootstrap-transition.js"></script>
    <script src="../js/bootstrap/bootstrap-collapse.js"></script>
    <script src="../js/bootstrap/bootstrap-affix.js"></script>

    <!-- Additional Java-Script -->
    <script src="../js/app/ajax/tripinfo.js" type="text/javascript"></script>

</body>
<html>