<!DOCTYPE html>
<html lang="en">
<head>
<title>PPI : Registration page</title>
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
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page5">
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
      <div class="row-2">
        <nav>
           <ul class="menu">
            <li><a  href="index.html">Home Page</a></li>
            <li><a  href="about.html">About Us</a></li>
            <li><a href="admin.html">Admin</a></li>
            <li><a href="user.html">User</a></li>
            <li class="last-item"><a  class="active" href="register.jsp">Register</a></li>
          </ul>
        </nav>
      </div>
    </header>
    <!-- content -->
    <section id="content">
      <div class="padding">
        <div class="wrapper margin-bot">
          <div class="col-3">
            <div class="indent">
              <h2 class="p0">User Registration Form</h2>
              <form id="contact-form" action="insertdata.jsp" method="post" enctype="multipart/form-data">
                <fieldset>
                  <label><span class="text-form">Name:</span>
                    <input type="text"  name="userid" />
                  </label>
                  <label><span class="text-form">Password:</span>
                    <input type="password" name="pass"  />
                  </label>
				  <label><span class="text-form">E-Mail:</span>
                    <input type="text" name="email"  />
                  </label>
				  <label><span class="text-form">Mobile:</span>
                    <input type="text" name="mob"  />
                  </label>
				  <label><span class="text-form">Dob:</span>
                    <input type="text" name="dob"  />
                  </label>
				  <label><span class="text-form">Profile Photo:</span>
                    <input type="file" name="pic"  />
                  </label>
                  <div class="wrapper">
                    <div class="text-form">Address:</div>
                    <textarea id="address" name="address" rows="3" cols="50"></textarea>
                  </div>
				  
                  <div > <tr><td height="57" colspan="2" id="learn_more" align="center" bgcolor="#000000" style="color:#FFFFFF;"><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/><input type="reset" name="Reset" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/></td></tr></div>
                </fieldset>
              </form>
            </div>
			
          </div>
		 
		  
          <div class="col-4">
            <div class="block-news">
              <h3 class="color-4 indent-bot2">Login</h3>
              <dl class="contact p3">
			  	<form action="authentication.jsp" method="post">
                <dt><span>Username</span><input type="text" name="userid" /></dt>
                <dd><span>Password</span>
                  <input type="password" name="pass" />
                </dd>
                <dd><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/>
                </dd>
			  	</form>
              </dl>
              <h3 class="color-4 indent-bot2">&nbsp;</h3>
              <p class="text-1">&nbsp;</p>
            </div>
          </div>
		   
        </div>
		<div style="color:#006600;"><%= request.getAttribute("msg")%></div>
        <div class="box-bg">
          <div class="wrapper">
            <div class="col-1">
              <div class="box first">
                <div class="pad">
                  <div class="wrapper indent-bot"> <strong class="numb img-indent2">01</strong>
                    <div class="extra-wrap">
                      <h3 class="color-1"><strong>Careful</strong>Analysis</h3>
                    </div>
                  </div>
                  <div class="wrapper"> <a class="button img-indent-r" href="#">>></a>
                    <div class="extra-wrap">  </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-1">
              <div class="box second">
                <div class="pad">
                  <div class="wrapper indent-bot"> <strong class="numb img-indent2">02</strong>
                    <div class="extra-wrap">
                      <h3 class="color-2"><strong>Quick</strong>Research</h3>
                    </div>
                  </div>
                  <div class="wrapper"> <a class="button img-indent-r" href="#"></a>
                    <div class="extra-wrap"> </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-2">
              <div class="box third">
                <div class="pad">
                  <div class="wrapper indent-bot"> <strong class="numb img-indent2">03</strong>
                    <div class="extra-wrap">
                      <h3 class="color-3"><strong>New</strong>Strategies</h3>
                    </div>
                  </div>
                  <div class="wrapper"> <a class="button img-indent-r" href="#">>></a>
                    <div class="extra-wrap"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- footer -->
    <footer>
      <div class="row-top">
        <div class="row-padding">
          <div class="wrapper">
            <div class="col-1">
              <h4>&nbsp;</h4>
            </div>
            <div class="col-2">
              <h4>&nbsp;</h4>
            </div>
            <div class="col-3">
              <h4>&nbsp;</h4>
            </div>
          </div>
        </div>
      </div>
      <div class="row-bot">
        <div class="aligncenter">
          <p class="p0"><br>
            <!-- {%FOOTER_LINK} -->
        </p>
        </div>
      </div>
    </footer>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
<div align=center>&nbsp;</div>
</body>
</html>
