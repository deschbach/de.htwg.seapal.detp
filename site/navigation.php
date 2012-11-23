	<div id='header-wrapper'>
		<div id='header' class='container'>
			<div id='logo'>
				<h1><a name='top'><img src='../img/Icon-Small-50.png' alt='Icon-Small-50' width='40' height='40' />  <?php echo $menu_title; ?></a></h1>
			</div>
			<div id='menu'>
				<ul>
					<li <?php if ($menu_id == 1) echo("class='current_page_item'"); ?>><a href='index.php'>Homepage</a></li>
					<li <?php if ($menu_id == 2) echo("class='current_page_item'"); ?>><a href='app.php'>App</a></li>
					<li <?php if ($menu_id == 3) echo("class='current_page_item'"); ?>><a href='userguide.php'>User Guide</a></li>
					<li <?php if ($menu_id == 4) echo("class='current_page_item'"); ?>><a href='screenshots.php'>Screenshots</a></li>
					<li <?php if ($menu_id == 5) echo("class='current_page_item'"); ?>><a href='about.php'>About</a></li>
					<li <?php if ($menu_id == 6) echo("class='current_page_item'"); ?>><a href='contact.php'>Contact</a></li>
				</ul>
			</div>
		</div>
	</div>