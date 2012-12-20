
<head profile='http://www.w3.org/2005/10/profile'>
  <meta name='keywords' content='sailing, app, navigation, sea map, boat, skipper'/>
  <meta name='description' content='SeaPal is a mobile app for sailors to do navigation, tracking and more.'/>
  <meta http-equiv='content-type' content='text/html; charset=utf-8'/>
  <title>SeaPal</title>
  <link rel='icon' type='image/png' href='../img/Icon-Small-50.png'/>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'/>
  <link href='../css/default.css' rel='stylesheet' type='text/css' media='screen'/>

  <!-- Google Analytics code -->
  <script type='text/javascript'>

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-34885997-1']);
    _gaq.push(['_gat._anonymizeIp']);
    _gaq.push(['_setDomainName', 'seapad.org']);
    _gaq.push(['_setAllowLinker', true]);
    _gaq.push(['_trackPageview']);

    (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

  </script>

  <!-- JQuery -->
  <script type="text/javascript" src="../js/jquery-1.8.2.js"></script>

</head>
<body>
  <div id='header-wrapper'>
    <div id='header' class='container'>
      <div id='logo'>
        <h1>
          <a name='top'>
            <img src='../img/Icon-Small-50.png' alt='Icon-Small-50' width='40' height='40' />
            <%= menu_title %>
          </a>
        </h1>
      </div>
      <div id='menu'>
        <ul>
          <li
            <% if (menu_id == 1) out.print("class='current_page_item'"); %>><a href='index.jsp'>Homepage</a>
          </li>
          <li
            <% if (menu_id == 2) out.print("class='current_page_item'"); %>><a href='app_map.jsp'>App</a>
          </li>
          <li
            <% if (menu_id == 3) out.print("class='current_page_item'"); %>><a href='userguide.jsp'>User Guide</a>
          </li>
          <li
            <% if (menu_id == 4) out.print("class='current_page_item'"); %>><a href='screenshots.jsp'>Screenshots</a>
          </li>
          <li
            <% if (menu_id == 5) out.print("class='current_page_item'"); %>><a href='about.jsp'>About</a>
          </li>
          <li
            <% if (menu_id == 6) out.print("class='current_page_item'"); %>><a href='contact.jsp'>Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </div>