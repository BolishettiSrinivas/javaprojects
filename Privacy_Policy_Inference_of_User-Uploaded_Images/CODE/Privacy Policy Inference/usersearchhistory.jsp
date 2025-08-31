<!DOCTYPE html>
<html lang="en">
<head>
<title>PPI : User Search History</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]--></head>
<body id="page1">
<!-- header -->
<div class="bg">
  <div class="main">
    <header>
      <div class="row-1">
        <h1 style="width:600px;"> <span class="slog">Privacy Policy Inference of User-Uploaded Images on Content Sharing Sites</span> </h1>
        <form id="search-form" action="#" method="post" enctype="multipart/form-data">
          <fieldset>
            <div class="search-form">
              <input type="text" name="search" value="Type Keyword Here" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
              <a href="#">Search</a> </div>
          </fieldset>
        </form>
      </div>
      <div class="#" style="background-color:#000000; height:40px;">
        <nav>
          <!--<ul class="menu">
            <li><a   href="index.html">Home Page</a></li>
            <li><a  href="about.html">About Us</a></li>
            <li><a  href="admin.html">Admin</a></li>
            <li><a class="active" href="user.html">User</a></li>
            <li class="last-item"><a href="register.jsp">Register</a></li>
          </ul>-->
        </nav>
      </div>
    </header>
    <!-- content -->
    <section id="content">
      <div class="padding">
        <div class="wrapper">
		
		<div class="col-2">
            <div class="block-news">
              <h4 class="color-4 p2">Welcome to <%= application.getAttribute("uname")%> </h4>
              <div class="wrapper p2">
                <p>
                <ul class="tooplate_list">
                    <li><a href="user_menu.jsp">View Profile</a></li>
					<li><a href="user_add_image.jsp">Add Image</a></li>
                    <li><a href="usersearch.jsp">User Search  </a></li>
                    <li><a href="sendrequest.jsp">Send Friend Request </a></li>
                    <li><a href="searchfriend.jsp">Search Other Friends </a></li>
					<li><a href="usersearchhistory.jsp">View My Search History </a></li>
					<li><a href="setpolicies.jsp">Set Policies On Image</a></li>
					<li><a href="recommendfriend.jsp">Recommend Image to Other Friends </a></li>
					<li><a href="viewrecommendedimages.jsp">View Recommended Images </a></li>
					<li><a href="viewfriendrequest.jsp">View All Friends request </a></li>
					<li><a href="index.html">Logout </a></li>
                </ul>
                  </p>
                <p>&nbsp;</p>
                
              </div>
            </div>
		</div>
         <div class="col-3">
		  	
		  
		  	<!--<iframe src="listusers.jsp" width="640" height="500"></iframe> -->
			<iframe src="usearchhistory.jsp" style="border:3px;" width="640" height="400"></iframe>
            
          </div>
          
        </div>
      </div>
    </section>
    <!-- footer -->
    <footer>
      <div style="background-color:#000000; height:40px;"></div>
     
    </footer>
  </div>
</div>

</html>
