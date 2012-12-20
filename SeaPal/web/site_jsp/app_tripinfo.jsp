<html>

    <% String menu_title = "app";%>
    <% int menu_id = 2;%>
    <% int submenu_id = 3;%>
    <%@ include file="header.jsp" %>
    <%@ include file="app_menu.jsp" %>

    <body style="overflow: none;">
        <div id="appWrapper" align="center">
            <br>
            <h2>Routen Informationen</h2>
            <br>
            <div id="waypointInputDiv">
                <div id="waypointInput">
                    <table>
                        <tbody>
                            <tr>
                                <td><label for="name">Name</label></td>
                                <td><input type="text" name="name" id="name"/></td>
                            </tr>
                            <tr>
                                <td><label for="lat">Latitude</label></td>
                                <td><input type="text" name="lat" id="lat"/></td>
                                <td><label for="lng">Longitude</label></td>
                                <td><input type="text" name="lng" id="lng"/></td>
                            </tr>
                            <tr>
                                <td><label for="btm">BTM</label></td>
                                <td><input type="text" name="btm" id="btm"/></td>
                                <td><label for="dtm">DTM</label></td>
                                <td><input type="text" name="dtm" id="dtm"/></td>
                            </tr>
                        </tbody>
                    </table>		        
                </div>
            </div>
            <br>
            <br>


            <div class="appTableDiv" id="tripinfo" align="center">
                <table class="appTable" cellspacing="0px" cellpadding="5px">
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
                    <tbody class="appTableBody">
                        <?php

                        $tnr = 1;

                        if ($_GET['tnr'])
                        $bnr = urldecode($_GET['tnr']);

                        $conn = mysql_connect("localhost","root","root");

                        $db_selected = mysql_select_db('SeaPal', $conn);

                        if (!$db_selected) {
                        die ('Can\'t use foo : ' . mysql_error());
                        }

                        $sql = "SELECT * FROM wegpunkte WHERE tnr =" . $tnr . ";";

                        $result = mysql_query($sql,$conn);

                        if (!$result) {
                        die('Invalid query: ' . mysql_error());
                        }

                        while ($row = mysql_fetch_array($result)) {

                        echo("<tr>");
                        echo("<td><span class='wnr' style='display: none;'>".$row['wnr']."</span>" . $row['name'] . "</td>");
                        echo("<td>" . $row['lat'] . "</td>");
                        echo("<td>" . $row['lng'] . "</td>");
                        echo("<td>" . $row['btm'] . "</td>");
                        echo("<td>" . $row['dtm'] . "</td>");
                        echo("<td>" . $row['manoever'] . "</td>");
                        echo("<td align='right'><a href='app_waypoint.jsp?wnr=" . $row['tnr'] . "'><img src='../img/arrow.png' style='width:20px; padding-top:4px;'></a></td>");
                        echo("</tr>");

                        }

                        mysql_close($conn);

                        ?>
                    </tbody>
                </table>
            </div>
            <input type="reset" id="delete" value="L&ouml;schen" class="button"/>
            <input type="submit" id="save" name="submit" value="Speichern" class="button"/>
        </div>
    </div>

    <script type="text/javascript">
		
        $(function() {
			
            $("table tr").click(function(event) {
                loadValues($("span.wnr", this).html());
            });
				
            function loadValues(waypointnr) { 
	        	
                $.ajax({
                    url: "app_tripinfo_load.php",
                    data: {
                        'wnr': waypointnr
                    },
                    dataType: "json",
                    success: function(data) {
                        $('#name').val(data['name']);
                        $('#lat').val(data['lat']);
                        $('#lng').val(data['lng']);
                        $('#btm').val(data['btm']);
                        $('#dtm').val(data['dtm']);
                    }	
                });
		
            }
				
        });
			
	        
    </script>
</body>
<html>