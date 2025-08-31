<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!DOCTYPE html>
<html lang="en">
<head>
<title>PPI : User Menu</title>
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
			<iframe src="userprofile.jsp" style="border:3px;" width="640" height="400"></iframe>
            
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

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>PPI :: User Profile</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />


    <script type="text/javascript" src="js/swfobject.js"></script>
	<script type="text/javascript">
        var flashvars = {};
        flashvars.xml_file = "photo_list.xml";
        var params = {};
        params.wmode = "transparent";
        var attributes = {};
        attributes.id = "slider";
        swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "440", "220", "9.0.0", false, flashvars, params, attributes);
    </script></head>
<body>

<div  style="width:610px;">
  <!-- end of forever header -->
  <div id="tooplate_main">
      <div style="width:600px;">
   	    <div class="post_box">
            	<h2>User Details  !!!  </h2>
                <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					
					<%
						String uname = (String)application.getAttribute("uname");
						//int uid = Integer.parseInt(mid);
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+uname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								//s7=rs.getString(9);
								//s8=rs.getString(8);
					%>
					<tr>
 						<td  width="150" valign="middle" height="50" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Username</b></div></td>
						<td  width="300" valign="middle" height="50" style="color:#000000;"><div align="left" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
 						<td  width="120" valign="middle" height="50" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b>E-Mail</b></div></td>
						<td  width="72" valign="middle" height="50" style="color:#000000;"><div align="left" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
  						<td  width="100" valign="middle" height="50" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Mobile</strong></div></td>
						<td  width="82" valign="middle" height="50"><div align="left" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="50" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
						<td  width="82" align="left" valign="middle" height="50"><div align="left" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="50" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Address</strong></div></td>
						<td  width="82" align="left" valign="middle" height="50"><div align="left" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="50" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Status</strong></div></td>
						<td  width="100" align="left" valign="middle" height="50" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
				
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

					
				</table>
				
       	        <p>&nbsp;</p>
				
       	  </div>
		  
      </div>    	

    	<div class="cleaner"></div>
    </div> <!-- end of main -->
    <div id="tooplate_main_bottom"></div>

</div> <!-- wrapper -->


</body>
</html>