<% String filename_navigation = request.getRequestURI().replaceAll(".jsp", "").replaceAll(".*/", "");%>

<!-- Navigation -->
<div class="navbar navbar-inverse navbar-fixed-top" id="navigation">
	<div class="navbar-inner" id="navigation">
        <div class="container">
          	<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse" style="margin-top:25px; margin-right:20px;">
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            </a>
            <a class="brand" href="index.php">
            	<img src='../img/icons/seapal_normal.png' alt='Icon-Small-50' width='50' height='50' style="float: left; padding-top: 5px; padding-left: 20px"/>
            	<h2 style="float: left; padding-left:10px; margin-right:100px; font-weight: normal;">Seapal</h2>
            </a>
            <div class="nav-collapse collapse">
            	<ul class="nav nav-pills" style="padding-left:0px; padding-top: 24px; font-size: 18px;">

                    <li <% if (filename_navigation.equals("index")) {
                            out.print("class='active'");
                        }%>><a href='index.jsp'>Home</a></li>
                    <li <% if (filename_navigation.equals("app_map")) {
                            out.print("class='active'");
                        }%>><a href='app_map.jsp'>App</a></li>
                    <li <% if (filename_navigation.equals("userguide")) {
                            out.print("class='active'");
                        }%>><a href='userguide.jsp'>User Guide</a></li>
                    <li <% if (filename_navigation.equals("screenshots")) {
                            out.print("class='active'");
                        }%>><a href='screenshots.jsp'>Screenshots</a></li>
                    <li <% if (filename_navigation.equals("about")) {
                            out.print("class='active'");
                        }%>><a href='about.jsp'>About</a></li>
                    <li <% if (filename_navigation.equals("contact")) {
                            out.print("class='active'");
                        }%>><a href='contact.jsp'>Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>