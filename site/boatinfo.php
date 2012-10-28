<!DOCTYPE HTML>

<html>
    <head>
    	<link href="../css/boatinfo.css" media="screen" rel="stylesheet" type="text/css"/> 
    	<link href="../css/tables.css" media="screen" rel="stylesheet" type="text/css"/> 
    </head>
    <body>
    	<div class="container" id="header">
    		<div id="logo">
	    		<h1><a name="top"><img width="50" height="50" alt="Icon-Small-50" src="../pictures/seapal.png">    SeaPal </a></h1>
			</div>
		    <div id="menu">
				<ul>
				    <li class="current_page_item"><a href="index.php">Homepage</a></li>
				    <li><a href="">User Guide</a></li>
				    <li><a href="">Screenshots</a></li>
				    <li><a href="">About</a></li>
				    <li><a href="">Contact</a></li>
			    </ul>
			</div>
		</div>
		<h1 align="center" style="color: #CE92A6;">Logbuch</h1>
		<div id="wrapper" align="center">
            <form method="post" action="boatinfo_insert.php">
                <div id="form_div" align="center">
                	<table id="form_table" cellspacing="0px" cellpadding="5px">
                		<thead>
		                	<tr>
			                	<th colspan="6" align="center">Boat Informations</th>
		                	</tr>
	                	</thead>
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
                            </tr>
                        </thead>
                        
                        <tbody>
                            <tr>
                                
                            <?php
                                
                                $conn = mysql_connect("localhost","root","");
						
                                $db_selected = mysql_select_db('SeaPal', $conn);
						
								if (!$db_selected) {
									die ('Can\'t use foo : ' . mysql_error());
								}
													
								$sql = "SELECT bootname, typ, konstrukteur, laenge, eigner FROM bootinfo;";
                                
                                $result = mysql_query($sql,$conn);
						
								if (!$result) {
									die('Invalid query: ' . mysql_error());
								}
								
								while ($row = mysql_fetch_row($result)) {
								
									echo("<tr>");
									
									echo("<td>$row[0]</td>");
									echo("<td>$row[1]</td>");
									echo("<td>$row[2]</td>");
									echo("<td>$row[3]</td>");
									echo("<td>$row[4]</td>");
									echo("<td align='right'><a href=''><img src='../images/arrow.png' style='width:20px'></a></td>");
									
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
        </div>
    </body>
</html>