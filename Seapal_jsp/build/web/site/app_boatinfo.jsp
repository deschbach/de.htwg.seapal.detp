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
                <h2>Boot Informationen</h2>
                <br />
                <div class="container-fluid">
                    <form class="form-horizontal"> 
                        <div class="row well" style="margin-left: 15%;">
                            <div class="span4" align="center">	            		
                                <div class="control-group">
                                    <label class="control-label">Bootname</label>
                                    <input class="input-medium" type="text" name="bootname" id="bootname" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Baujahr</label>
                                    <input class="input-medium" type="text" name="baujahr" id="baujahr" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Konstrukteur</label>
                                    <input class="input-medium" type="text" name="konstrukteur" id="konstrukteur" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Registernummer</label>
                                    <input class="input-medium" type="text" name="registernummer" id="registernummer" />
                                </div> 
                                <div class="control-group">
                                    <label class="control-label">Eigner</label>
                                    <input class="input-medium" type="text" name="eigner" id="eigner" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Yachtclub</label>
                                    <input class="input-medium" type="text" name="yachtclub" id="yachtclub" />
                                </div>        
                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">Typ</label>
                                    <input class="input-medium" type="text" name="typ" id="typ" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Rig-Art</label>
                                    <input class="input-medium" type="text" name="rigart" id="rigart" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Rufzeichen</label>
                                    <input class="input-medium" type="text" name="rufzeichen" id="rufzeichen" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Segelzeichen</label>
                                    <input class="input-medium" type="text" name="segelzeichen" id="segelzeichen" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Versicherung</label>
                                    <input class="input-medium" type="text" name="versicherung" id="versicherung" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Heimathafen</label>
                                    <input class="input-medium" type="text" name="heimathafen" id="heimathafen" />
                                </div>
                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">Breite</label>
                                    <input class="input-medium" type="text" name="breite" id="breite" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">L&auml;nge</label>
                                    <input class="input-medium" type="text" name="laenge" id="laenge" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Motor</label>
                                    <input class="input-medium" type="text" name="motor" id="motor"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Tankgr&ouml;&szlig;e</label>
                                    <input class="input-medium" type="text" name="tankgroesse" id="tankgroesse" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Wassertankgr&ouml;&szlig;e</label>
                                    <input class="input-medium" type="text" name="wassertankgroesse" id="wassertankgroesse" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Abwassertankgr&ouml;&szlig;e</label>
                                    <input class="input-medium" type="text" name="abwassertankgroesse" id="abwassertankgroesse" />
                                </div>		      

                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">Tiefgang</label>
                                    <input class="input-medium" type="text" name="tiefgang" id="tiefgang" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Masth&ouml;he</label>
                                    <input class="input-medium" type="text" name="masthoehe" id="masthoehe" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Spigr&ouml;&szlig;e</label>
                                    <input class="input-medium" type="text" name="spigroesse" id="spigroesse" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Verdr&auml;ngung</label>
                                    <input class="input-medium" type="text" name="verdraengung" id="verdraengung" />
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Genuagr&ouml;&szlig;e</label>
                                    <input class="input-medium" type="text" name="genuagroesse" id="genuagroesse" />
                                </div>	
                                <div class="control-group">
                                    <label class="control-label">Gro&szlig;segelgr&ouml;&szlig;e</label>
                                    <input class="input-medium" type="text" name="grosssegelgroesse" id="grosssegelgroesse" />
                                </div>	      
                            </div>
                        </div>      	 
                        <div class="control-group">
                            <input type="reset" class="btn" id="delete" value="L&ouml;schen" class="button"/>
                            <input type="submit" class="btn" id="save" name="submit" value="Speichern" class="button"/>
                        </div>  
                </div>
            </div>
        </form>
        <br />
        <br />
        <div class="appTableDiv" align="center">
            <table class="appTable table table-hover" cellspacing="0px" cellpadding="5px">
                <thead>
                    <tr>
                        <th>Bootsname</th>
                        <th>Bootstyp</th>
                        <th>Konstrukteur</th>
                        <th>Baujahr</th>
                        <th>Heimathafen</th>
                        <th>L&auml;nge</th>
                        <th>Breite</th>
                        <th>Tiefgang</th>
                        <th>Inhaber</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody id="entries">

                    <%! Statement stmt;
                        Connection con;
                        String url = "jdbc:mysql://localhost:3306";
                    %>

                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection(url, "root", "root");

                            stmt = con.createStatement();
                            ResultSet result = stmt.executeQuery("SELECT * FROM seapal.bootinfo");

                            while (result.next()) {
                                out.print("<tr class='selectable' id='" + result.getString("bnr") + "'>");
                                out.print("<td>" + result.getString("bootname") + "</td>");
                                out.print("<td>" + result.getString("typ") + "</td>");
                                out.print("<td>" + result.getString("konstrukteur") + "</td>");
                                out.print("<td>" + result.getString("baujahr") + "</td>");
                                out.print("<td>" + result.getString("heimathafen") + "</td>");
                                out.print("<td>" + result.getString("laenge") + "</td>");
                                out.print("<td>" + result.getString("breite") + "</td>");
                                out.print("<td>" + result.getString("tiefgang") + "</td>");
                                out.print("<td>" + result.getString("eigner") + "</td>");
                                out.print("<td style='width:30px; text-align:left;'><div class='btn-group'>");
                                out.print("<a class='btn btn-small view' id='" + result.getString("bnr")
                                        + "'><span><i class='icon-eye-open'></i></span></a>");
                                out.print("<a class='btn btn-small remove' id='" + result.getString("bnr")
                                        + "'><span><i class='icon-remove'></i></span></a>");
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
            <br /><br />
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

<!-- Additional Java-Script -->
<script src="../js/app/ajax/boatinfo.js" type="text/javascript"></script>

</body>
</html>