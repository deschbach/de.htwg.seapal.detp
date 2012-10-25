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
            <form>
                <div id="form_div" align="center">
                	<table id="form_table" cellspacing="0px" cellpadding="5px">
                		<thead>
		                	<tr>
			                	<th colspan="6" align="center">Boat Informations</th>
		                	</tr>
	                	</thead>
                		<tr>
                			<td><label for="bname">Bootsname</label></td>
                			<td><input type="text" name="bname" id="bname"/></td>
                			<td><label for="typ">Typ</label></td>
                			<td><input type="text" name="typ" id="typ"/></td>
                			<td><label for="bjahr">Baujahr</label></td>
                			<td><input type="text" name="bjahr" id="bjahr"/></td>
                		</tr>
                		<tr>
                			<td><label for="rnr">Registernummer</label></td>
                			<td><input type="text" name="rnr" id="rnr"/></td>
                			<td><label for="konst">Konstrukteur</label></td>
                			<td><input type="text" name="konst" id="konst"/></td>
                			<td><label for="motor">Motor</label></td>
                			<td><input type="text" name="motor" id="motor"/></td>
                		</tr>
                		<tr>
                			<td><label for="szeichen">Segelzeichen</label></td>
                			<td><input type="text" name="szeichen" id="szeichen"/></td>
                			<td><label for="l">L&auml;nge</label></td>
                			<td><input type="text" name="l" id="l"/></td>
                			<td><label for="tvol">Tankgr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="tvol" id="tvol"/></td>
                		</tr>
                		<tr>
                			<td><label for="hhafen">Heimathafen</label></td>
                			<td><input type="text" name="hhafen" id="hhafen"/></td>
                			<td><label for="b">Breite</label></td>
                			<td><input type="text" name="b" id="b"/></td>
                			<td><label for="wvol">Wassertankgr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="wvol" id="wvol"/></td>
                		</tr>
                		<tr>
                			<td><label for="yclub">Yachtclub</label></td>
                			<td><input type="text" name="yclub" id="yclub"/></td>
                			<td><label for="t">Tiefgang</label></td>
                			<td><input type="text" name="t" id="t"/></td>
                			<td><label for="avol">Abwassertankgr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="avol" id="avol"/></td>
                		</tr>
                		<tr>
                			<td><label for="eigner">Eigner</label></td>
                			<td><input type="text" name="eigner" id="eigner"/></td>
                			<td><label for="mh">Masth&ouml;he</label></td>
                			<td><input type="text" name="mh" id="mt"/></td>
                			<td><label for="gsgr">Gro&szlig;segelgr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="gsgr" id="gsgr"/></td>
                		</tr>
                		<tr>
                			<td><label for="vers">Versicherung</label></td>
                			<td><input type="text" name="vers" id="vers"/></td>
                			<td><label for="verdr">Verdr&auml;ngung</label></td>
                			<td><input type="text" name="verd" id="verdr"/></td>
                			<td><label for="gegr">Genuagr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="gegr" id="gegr"/></td>
                		</tr>
                		<tr>
                			<td><label for="rzeichen">Rufzeichen</label></td>
                			<td><input type="text" name="rzeichen" id="rzeichen"/></td>
                			<td><label for="riga">Rig-Art</label></td>
                			<td><input type="text" name="riga" id="riga"/></td>
                			<td><label for="spgr">Spigr&ouml;&szlig;e</label></td>
                			<td><input type="text" name="spgr" id="spgr"/></td>
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
                                <td>Xpresso</td>
                                <td>X-99</td>
                                <td>X-Yachts</td>
                                <td>10</td>
                                <td>HTWG Konstanz</td>
                                <td align="right"><a href=""><img src="../pictures/arrow.png" style="width:20px"></a></td>
                            </tr>
                            <tr>
                                <td>Xpresso</td>
                                <td>X-99</td>
                                <td>X-Yachts</td>
                                <td>10</td>
                                <td>HTWG Konstanz</td>
                                <td align="right"><a href=""><img src="../pictures/arrow.png" style="width:20px"></a></td>
                            </tr>
                            <tr>
                                <td>Xpresso</td>
                                <td>X-99</td>
                                <td>X-Yachts</td>
                                <td>10</td>
                                <td>HTWG Konstanz</td>
                                <td align="right"><a href=""><img src="../pictures/arrow.png" style="width:20px"></a></td>
                            </tr>
                            <tr>
                                <td>Xpresso</td>
                                <td>X-99</td>
                                <td>X-Yachts</td>
                                <td>10</td>
                                <td>HTWG Konstanz</td>
                                <td align="right"><a href=""><img src="../pictures/arrow.png" style="width:20px"></a></td>
                            </tr>
                            <tr>
                                <td>Xpresso</td>
                                <td>X-99</td>
                                <td>X-Yachts</td>
                                <td>10</td>
                                <td>HTWG Konstanz</td>
                                <td align="right"><a href=""><img src="../pictures/arrow.png" style="width:20px"></a></td>
                            </tr>
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