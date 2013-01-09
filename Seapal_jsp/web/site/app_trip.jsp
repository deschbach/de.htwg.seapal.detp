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
                <h2>Routen</h2>
                <br />
                <div class="container-fluid">
                    <form class="form-horizontal"> 
                        <div class="row well" style="margin-left: 15%;">
                            <div class="span4" align="center">	            		
                                <div class="control-group">
                                    <label class="control-label">Titel</label>
                                    <input type="text" name="titel" id="titel"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Von</label>
                                    <input type="text" name="von" id="von"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Nach</label>
                                    <input type="text" name="von" id="nach"/>
                                </div>        
                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">Start</label>
                                    <input type="text" name="titel" id="tstart"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Ende</label>
                                    <input type="text" name="von" id="tende"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Dauer</label>
                                    <input type="text" name="von" id="tdauer"/>
                                </div>
                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">Skipper</label>
                                    <input type="text" name="von" id="skipper"/>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Crew</label>
                                    <textarea cols="20" rows="3" id="crew"></textarea>
                                </div>			                            
                            </div>
                            <div class="span4">
                                <div class="control-group">
                                    <label class="control-label">Motor</label>
                                    <input type="text" name="motor" id="motor"/>
                                </div>	
                                <div class="control-group">
                                    <label class="control-label"></label>
                                    <span>Tank gef&uuml;llt<input type="checkbox" value="false" name="tank" id="tank" style="margin-left:20px; margin-top:-5px;"/></span>
                                </div>			                            
                            </div>
                        </div>      	 
                        <div class="control-group">
                            <input type="reset" class="btn" id="delete" value="L&ouml;schen" class="button"/>
                            <input type="submit" class="btn" id="save" name="submit" value="Speichern" class="button"/>
                        </div>  
                    </form>
                </div>
                <br />
                <br />
                <div class="appTableDiv" id="appRoutelist" align="center">
                    <table class="appTable table table-hover" id="tableLinesClickable" cellspacing="0px" cellpadding="5px">
                        <thead>
                            <tr>
                                <th>Titel</th>
                                <th>Skipper</th>
                                <th>Start</th>
                                <th>Ende</th>
                                <th>Dauer</th>
                                <th>Motor</th>     
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
                                    ResultSet result = stmt.executeQuery("SELECT * FROM seapal.tripinfo");

                                    while (result.next()) {
                                        out.print("<tr class='selectable'>");
                                        out.print("<td>" + result.getString("titel") + "</td>");
                                        out.print("<td>" + result.getString("skipper") + "</td>");
                                        out.print("<td>" + result.getString("tstart") + "</td>");
                                        out.print("<td>" + result.getString("tende") + "</td>");
                                        out.print("<td>" + result.getString("tdauer") + "</td>");
                                        out.print("<td>" + result.getString("motor") + "</td>");
                                        out.print("<td style='width:30px; text-align:right;'><div class='btn-group'>");
                                        out.print("<a class='btn btn-small view' id='" + result.getString("tnr")
                                                + "'><span><i class='icon-eye-open'></i></span></a>");
                                        out.print("<a class='btn btn-small remove' id='" + result.getString("tnr")
                                                + "'><span><i class='icon-remove'></i></span></a>");
                                        out.print("<a href='app_tripinfo.jsp?tnr=" + result.getString("tnr")
                                                + "' class='btn btn-small redirect' id='" + result.getString("tnr")
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
        <script src="../js/bootstrap/bootstrap-button.js"></script>
        <script src="../js/bootstrap/bootstrap-collapse.js"></script>
        <script src="../js/bootstrap/bootstrap-affix.js"></script>

        <!-- Additional Java-Script -->
        <script src="../js/app/ajax/trip.js" type="text/javascript"></script>

    </body>
    <html>