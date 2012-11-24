<?php
    	
    $menu_title = "app";
		$menu_id = 2;
		$submenu_id = 4;
		include('header.php');
        include('app_menu.php');
	?>

<form method="post" action="apply-now.php">
    <input name="subject" type="hidden" value="Class" />
    <fieldset>
        <label for="webpunktname">Name</label>
        <input type="text" name="wegpunktname" style="width: 300px;" />
        <br />
        <label for="position">Position</label>
        <input type="text" name="NorthDegree" style="width: 40px;" />
        <label for="NorthDegree">°</label>
        <input type="text" name="NorthMinutes" style="width: 27px;" />
        <label for="NorthMinutes">'</label>
        <input type="text" name="NorthSeconds" style="width: 27px;" />
        <label for="NorthSeconds">"N</label>
        <input type="text" name="EastDegree" style="width: 40px;" />
        <label for="EastDegree">°</label>
        <input type="text" name="EastMinutes" style="width: 27px;" />
        <label for="EastMinutes">'</label>
        <input type="text" name="EastSeconds" style="width: 27px;" />
        <label for="EastSeconds">"E</label>

        <label for="COG">COG</label>
        <input type="text" name="COG" style="width: 100px;" />
        <label for="SOG">SOG</label>
        <input type="text" name="SOG" style="width: 100px;" />
        <label for="atdate">at</label>
        <input type="date" name="atdate" style="width: 120px;" />
        <input type="time" name="attime" style="width: 50px;" />
        <br />

        <label for="BTM">BTM</label>
        <input type="text" name="BTM" style="width: 100px;" />
        <label for="DTM">DTM</label>
        <input type="text" name="DTM" style="width: 100px;" />
        <label for="fahrtziel">Fahrt nach  </label>
        <select name="fahrtziel" id="fahrtziel">
            <option value="MA1" selected="selected">Mark 1</option>
            <option value="MA2">Mark 2</option>
            <option value="MA3">Mark 3</option>
        </select>
        <br />

        <label for="manoever">Manoever  </label>
        <select name="manoever" id="manoever" style="width: 150px;">
            <option value="mandef" selected="selected">-</option>
            <option value="man1">Tack</option>
            <option value="man2">Jibe</option>
            <option value="man3">Lay to</option>
            <option value="man4">Set sails</option>
            <option value="man5">change Sails</option>
            <option value="man6">Reff</option>
            <option value="man7">Anker up</option>
            <option value="man8">Anker down</option>
        </select>
        <label for="vorsegel">Vorsegel   </label>
        <select name="vorsegel" id="vorsegel" style="width: 150px;">
            <option value="vorsegeldef" selected="selected">-</option>
            <option value="vorsegel1">Genua1</option>
            <option value="vorsegel2">Genua2</option>
            <option value="vorsegel3">Genua3</option>
            <option value="vorsegel4">Fock</option>
            <option value="vorsegel5">Storm Fock</option>
            <option value="vorsegel6">Blister</option>
            <option value="vorsegel7">Spinaker</option>
        </select>
        <label for="grosssegel">Manoever  </label>
        <select name="grosssegel" id="grosssegel" style="width: 150px;">
            <option value="grosssegeldef" selected="selected">-</option>
            <option value="grosssegel1">full</option>
            <option value="grosssegel2">reef 1</option>
            <option value="grosssegel3">reef 2</option>
        </select>
    </fieldset>
</form>
