<!DOCTYPE HTML>

<html>

    <% String menu_title = "app";%>
    <% int menu_id = 2;%>
    <%@ include file="header.jsp" %>

    <div id="wrapper" align="center">
        <form method="post" action="boatinfo_insert.php">
            <div id="form_div" align="center">
                <table id="form_table" cellspacing="0px" cellpadding="5px">
                    <br>
                    <thead>
                        <tr>
                            <th colspan="6" align="center">Boat Informations</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><label for="bootname">Bootsname</label></td>
                            <td><input type="text" name="bootname" id="bootname"/></td>
                            <td><label for="typ">Typ</label></td>
                            <td><input type="text" name="typ" id="typ"/></td>
                            <td><label for="baujahr">Baujahr</label></td>
                            <td><input type="text" name="baujahr" id="baujahr"/></td>
                        </tr>
                        <tr>
                            <td><label for="registernummer">Registernummer</label></td>
                            <td><input type="text" name="registernummer" id="registernummer"/></td>
                            <td><label for="konstrukteur">Konstrukteur</label></td>
                            <td><input type="text" name="konstrukteur" id="konstrukteur"/></td>
                            <td><label for="motor">Motor</label></td>
                            <td><input type="text" name="motor" id="motor"/></td>
                        </tr>
                        <tr>
                            <td><label for="segelzeichen">Segelzeichen</label></td>
                            <td><input type="text" name="segelzeichen" id="segelzeichen"/></td>
                            <td><label for="laenge">L&auml;nge</label></td>
                            <td><input type="text" name="laenge" id="laenge"/></td>
                            <td><label for="tankgroesse">Tankgr&ouml;&szlig;e</label></td>
                            <td><input type="text" name="tankgroesse" id="tankgroesse"/></td>
                        </tr>
                        <tr>
                            <td><label for="heimathafen">Heimathafen</label></td>
                            <td><input type="text" name="heimathafen" id="heimathafen"/></td>
                            <td><label for="breite">Breite</label></td>
                            <td><input type="text" name="breite" id="breite"/></td>
                            <td><label for="wassertankgroesse">Wassertankgr&ouml;&szlig;e</label></td>
                            <td><input type="text" name="wassertankgroesse" id="wassertankgroesse"/></td>
                        </tr>
                        <tr>
                            <td><label for="yachtclub">Yachtclub</label></td>
                            <td><input type="text" name="yachtclub" id="yachtclub"/></td>
                            <td><label for="tiefgang">Tiefgang</label></td>
                            <td><input type="text" name="tiefgang" id="tiefgang"/></td>
                            <td><label for="abwassertankgroesse">Abwassertankgr&ouml;&szlig;e</label></td>
                            <td><input type="text" name="abwassertankgroesse" id="abwassertankgroesse"/></td>
                        </tr>
                        <tr>
                            <td><label for="eigner">Eigner</label></td>
                            <td><input type="text" name="eigner" id="eigner"/></td>
                            <td><label for="masthoehe">Masth&ouml;he</label></td>
                            <td><input type="text" name="masthoehe" id="masthoehe"/></td>
                            <td><label for="grosssegelgroesse">Gro&szlig;segelgr&ouml;&szlig;e</label></td>
                            <td><input type="text" name="grosssegelgroesse" id="grosssegelgroesse"/></td>
                        </tr>
                        <tr>
                            <td><label for="versicherung">Versicherung</label></td>
                            <td><input type="text" name="versicherung" id="versicherung"/></td>
                            <td><label for="verdraengung">Verdr&auml;ngung</label></td>
                            <td><input type="text" name="verdraengung" id="verdraengung"/></td>
                            <td><label for="genuagroesse">Genuagr&ouml;&szlig;e</label></td>
                            <td><input type="text" name="genuagroesse" id="genuagroesse"/></td>
                        </tr>
                        <tr>
                            <td><label for="rufzeichen">Rufzeichen</label></td>
                            <td><input type="text" name="rufzeichen" id="rufzeichen"/></td>
                            <td><label for="rigart">Rig-Art</label></td>
                            <td><input type="text" name="rigart" id="rigart"/></td>
                            <td><label for="spigroesse">Spigr&ouml;&szlig;e</label></td>
                            <td><input type="text" name="spigroesse" id="spigroesse"/></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br>
            <br>
            <div id="list_div" align="center">
                <table id="detailed_table" cellspacing="0px" cellpadding="5px">
                    <thead>
                        <tr>
                            <th>Bootsname</th>
                            <th>Bootstyp</th>
                            <th>Konstrukteur</th>
                            <th>L&auml;nge</th>
                            <th>Inhaber</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody class="selectable_tbody">
                        <tr>

                            <?php

                            $conn = mysql_connect("localhost","root","");

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

                            echo("<tr>");

                            echo("<td>" . $row['bootname'] . "</td>");
                            echo("<td>" . $row['typ'] . "</td>");
                            echo("<td>" . $row['konstrukteur'] . "</td>");
                            echo("<td>" . $row['laenge'] . "</td>");
                            echo("<td>" . $row['eigner'] . "</td>");
                            echo("<td><input type='button' name='" . $row['bootname'] . "' class='load' value='load'/></td>");
                            echo("<td align='right'><a href='tripinfo.php'><img src='../img/arrow.png' style='width:20px; padding-top:4px;'></a></td>");
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
                <input type="submit" id="save" name="submit" value="Speichern" class="button"/>
                <input type="button" id="new" name="submit" value="Neuester" class="button"/>
                <input type="button" id="next" name="Nächster" value="N&auml;chster" class="button"/>
                <input type="button" id="previous" name="Vorheriger" value="Vorheriger" class="button"/>
                <div>
                    </form>
                    <br>
                    <br>
                </div>

                <script>
    
                    $('input.load').click(function()
                    {	
                        var url = "boatinfo_load.php?bootname=" + this.name;
    		
                        $("#form_div").load(url);
                    });
    
                </script>

                </body>
                </html>