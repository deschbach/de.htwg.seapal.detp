<html>


    <% String menu_title = "app";%>
    <% int menu_id = 2;%>
    <% int $submenu_id = 2;%>
    <%@ include file="header.jsp" %>
    <%@ include file="app_menu.jsp" %>


    <body style="overflow: none;">
        <div id="appWrapper" align="center">
            <br>
            <h2>Boot Informationen</h2>
            <br>
            <table id="form_table" cellspacing="0px" cellpadding="5px">
                <tbody>
                    <tr>
                        <td><label for="bootname">Bootsname</label></td>
                        <td><input type="text" name="bootname" id="bootname" /></td>
                        <td><label for="typ">Typ</label></td>
                        <td><input type="text" name="typ" id="typ" /></td>
                        <td><label for="baujahr">Baujahr</label></td>
                        <td><input type="text" name="baujahr" id="baujahr" /></td>
                        <td><label for="registernummer">Registernummer</label></td>
                        <td><input type="text" name="registernummer" id="registernummer" /></td>
                    </tr>
                    <tr>
                        <td><label for="konstrukteur">Konstrukteur</label></td>
                        <td><input type="text" name="konstrukteur" id="konstrukteur" /></td>   
                        <td><label for="motor">Motor</label></td>
                        <td><input type="text" name="motor" id="motor" /></td>
                        <td><label for="segelzeichen">Segelzeichen</label></td>
                        <td><input type="text" name="segelzeichen" id="segelzeichen" /></td>
                        <td><label for="laenge">L&auml;nge</label></td>
                        <td><input type="text" name="laenge" id="laenge" /></td>
                    </tr>
                    <tr>
                        <td><label for="tankgroesse">Tankgr&ouml;&szlig;e</label></td>
                        <td><input type="text" name="tankgroesse" id="tankgroesse" /></td>               
                        <td><label for="heimathafen">Heimathafen</label></td>
                        <td><input type="text" name="heimathafen" id="heimathafen" /></td>
                        <td><label for="breite">Breite</label></td>
                        <td><input type="text" name="breite" id="breite" /></td>
                        <td><label for="wassertankgroesse">Wassertankgr&ouml;&szlig;e</label></td>
                        <td><input type="text" name="wassertankgroesse" id="wassertankgroesse" /></td>
                    </tr>
                    <tr>
                        <td><label for="yachtclub">Yachtclub</label></td>
                        <td><input type="text" name="yachtclub" id="yachtclub" /></td>
                        <td><label for="tiefgang">Tiefgang</label></td>
                        <td><input type="text" name="tiefgang" id="tiefgang" /></td>
                        <td><label for="abwassertankgroesse">Abwassertankgr&ouml;&szlig;e</label></td>
                        <td><input type="text" name="abwassertankgroesse" id="abwassertankgroesse" /></td>
                        <td><label for="eigner">Eigner</label></td>
                        <td><input type="text" name="eigner" id="eigner" /></td>
                    </tr>
                    <tr>
                        <td><label for="masthoehe">Masth&ouml;he</label></td>
                        <td><input type="text" name="masthoehe" id="masthoehe" /></td>
                        <td><label for="grosssegelgroesse">Gro&szlig;segelgr&ouml;&szlig;e</label></td>
                        <td><input type="text" name="grosssegelgroesse" id="grosssegelgroesse" /></td>
                        <td><label for="versicherung">Versicherung</label></td>
                        <td><input type="text" name="versicherung" id="versicherung" /></td>
                        <td><label for="verdraengung">Verdr&auml;ngung</label></td>             
                        <td><input type="text" name="verdraengung" id="verdraengung" /></td>
                    </tr>
                    <tr>
                        <td><label for="genuagroesse">Genuagr&ouml;&szlig;e</label></td>
                        <td><input type="text" name="genuagroesse" id="genuagroesse" /></td>
                        <td><label for="rufzeichen">Rufzeichen</label></td>
                        <td><input type="text" name="rufzeichen" id="rufzeichen" /></td>
                        <td><label for="rigart">Rig-Art</label></td>
                        <td><input type="text" name="rigart" id="rigart" /></td>
                        <td><label for="spigroesse">Spigr&ouml;&szlig;e</label></td>
                        <td><input type="text" name="spigroesse" id="spigroesse" /></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <br>
            <script type="text/javascript">
                function loadValues(boatnr) { 
	        	
                    $.ajax({
                        url: "app_boatinfo_load.jsp",
                        data: {
                            'bnr': boatnr
                        },
                        dataType: "json"	
                    }).done(function(data) {
		        	
                        document.getElementById('bootname').value = data['bootname'];
                        document.getElementById('typ').value = data['typ'];
                        document.getElementById('baujahr').value = data['baujahr'];
                        document.getElementById('registernummer').value = data['registernummer'];
                        document.getElementById('konstrukteur').value = data['konstrukteur'];
                        document.getElementById('motor').value = data['motor'];
                        document.getElementById('segelzeichen').value = data['segelzeichen'];
                        document.getElementById('laenge').value = data['laenge'];
                        document.getElementById('tankgroesse').value = data['tankgroesse'];
                        document.getElementById('heimathafen').value = data['heimathafen'];
                        document.getElementById('breite').value = data['breite'];
                        document.getElementById('wassertankgroesse').value = data['wassertankgroesse'];
                        document.getElementById('yachtclub').value = data['yachtclub'];
                        document.getElementById('tiefgang').value = data['tiefgang'];
                        document.getElementById('abwassertankgroesse').value = data['abwassertankgroesse'];
                        document.getElementById('eigner').value = data['eigner'];
                        document.getElementById('masthoehe').value = data['masthoehe'];
                        document.getElementById('grosssegelgroesse').value = data['grosssegelgroesse'];
                        document.getElementById('versicherung').value = data['versicherung'];
                        document.getElementById('verdraengung').value = data['verdraengung'];
                        document.getElementById('genuagroesse').value = data['genuagroesse'];
                        document.getElementById('rufzeichen').value = data['rufzeichen'];
                        document.getElementById('rigart').value = data['rigart'];
                        document.getElementById('spigroesse').value = data['spigroesse'];
		
                    });
		
                }
            </script>

            <div class="appTableDiv" align="center">
                <table class="appTable" cellspacing="0px" cellpadding="5px">
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

                    <tbody class="appTableBody">

                        <?php

                        $conn = mysql_connect("localhost","root","root");

                        $db_selected = mysql_select_db('SeaPal', $conn);

                        if (!$db_selected) {
                        die ('Can\'t use foo : ' . mysql_error());
                        }

                        $sql = "SELECT * FROM bootinfo;";

                        $result = mysql_query($sql,$conn);

                        if (!$result) {
                        die('Invalid query: ' . mysql_error());
                        }

                        while ($row = mysql_fetch_array($result)) {

                        echo("<tr onclick=\"loadValues('" . $row['bnr'] . "');\">");
                        echo("<td>" . $row['bootname'] . "</td>");
                        echo("<td>" . $row['typ'] . "</td>");
                        echo("<td>" . $row['konstrukteur'] . "</td>");
                        echo("<td>" . $row['baujahr'] . "</td>");
                        echo("<td>" . $row['heimathafen'] . "</td>");
                        echo("<td>" . $row['laenge'] . "</td>");
                        echo("<td>" . $row['breite'] . "</td>");
                        echo("<td>" . $row['tiefgang'] . "</td>");
                        echo("<td>" . $row['eigner'] . "</td>");
                        echo("<td align='right'><a href='app_trip.php?bnr=" . $row['bnr'] . "'><img src='../img/arrow.png' style='width:20px; padding-top:4px;'></a></td>");
                        echo("</tr>");

                        }

                        mysql_close($conn);

                        ?>

                    </tbody>
                </table>

                <br>
                <br>
            </div>
            <div id="button_div">
                <input type="reset" id="delete" value="L&ouml;schen" class="button"/>
                <input type="button" id="save" name="save" value="Speichern" class="button" />
            </div>
            <br>
            <br>
        </div>
    </body>
</html>
