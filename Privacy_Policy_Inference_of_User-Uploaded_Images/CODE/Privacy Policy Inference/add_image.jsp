<!DOCTYPE html>
<html lang="en">
<head>
<title>PPI : Add Image page</title>
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
      
     
    </header>
    <!-- content -->
    <section id="content">
      <div class="padding">
        <div class="wrapper">
		
		<div class="col-2">
            <div class="block-news">
              <h4 class="color-4 p2">Welcome to Admin </h4>
              <div class="wrapper p2">
                <p>
                <ul class="tooplate_list">
                    <li><a href="add_image.jsp">Add Image</a></li>
                    <li><a href="viewallimages.jsp">View All Images With Policy </a></li>
                    <li><a href="viewallimagesranking.jsp">View All Images Ranking  </a></li>
                    <li><a href="viewallimagesdetails.jsp">View All Image Details</a></li>
					<li><a href="viewsearchhistory.jsp">View Search History </a></li>
					<li><a href="viewallusers.jsp">View All Users </a></li>
					<li><a href="index.html">Logout </a></li>
                </ul>
                  </p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
              </div>
            </div>
		</div>
          <div class="col-3">
		  	
		  <%
					
					application.setAttribute("imageuname", "admin");
				
				%>
		  	<iframe src="uploadimg.jsp" width="640" height="500"></iframe>
			
            <div class="indent">
            
              <p class="color-4 p1">&nbsp;</p>
              <p class="color-4 p1">&nbsp;</p>
              <p class="color-4 p1">&nbsp;</p>
              <div class="wrapper"></div>
            </div>
          </div>
          
        </div>
      </div>
    </section>
    <!-- footer -->
    <footer>
      <div class="row-top"></div>
      <div class="row-bot">
        <div class="aligncenter">
         &nbsp;
        </div>
      </div>
    </footer>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(function () {
    $('.slider')._TMS({
        prevBu: '.prev',
        nextBu: '.next',
        playBu: '.play',
        duration: 800,
        easing: 'easeOutQuad',
        preset: 'simpleFade',
        pagination: false,
        slideshow: 3000,
        numStatus: false,
        pauseOnHover: true,
        banners: true,
        waitBannerAnimation: false,
        bannerShow: function (banner) {
            banner.hide().fadeIn(500)
        },
        bannerHide: function (banner) {
            banner.show().fadeOut(500)
        }
    });
})
</script>
<div align=center>&nbsp;</div></body>
</html>
