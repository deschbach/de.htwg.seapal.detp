<div id='header-wrapper'>
    <div id='header' class='container'>
        <div id='logo'>
            <h1><a name='top'><img src='../img/Icon-Small-50.png' alt='Icon-Small-50' width='40' height='40' />  <% out.print(menu_title); %>></a></h1>
        </div>
        <div id='menu'>
            <ul>
                <li <% if (menu_id == 1) out.print("class='current_page_item'"); %>><a href='index.jsp'>Homepage</a></li>
                <li <% if (menu_id == 2) out.print("class='current_page_item'"); %>><a href='app.jsp'>App</a></li>
                <li <% if (menu_id == 3) out.print("class='current_page_item'"); %>><a href='userguide.jsp'>User Guide</a></li>
                <li <% if (menu_id == 4) out.print("class='current_page_item'"); %>><a href='screenshots.jsp'>Screenshots</a></li>
                <li <% if (menu_id == 5) out.print("class='current_page_item'"); %>><a href='about.jsp'>About</a></li>
                <li <% if (menu_id == 6) out.print("class='current_page_item'"); %>><a href='contact.jsp'>Contact</a></li>
            </ul>
        </div>
    </div>
</div>