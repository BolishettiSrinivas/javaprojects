<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin </title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style2 {
	font-size: 18px;
	color: #FF0000;
}
.style4 {color: #000000}
.style5 {color: #FFFFFF}
-->
</style>

</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style2">Blockchain Based Accounts Payable Platform for Goods Trade</span></a></h1>
      </div>
      <div class="menu">
        <ul>
          <li><a href="index.html"><span>Home</span></a></li>
          <li><a href="A_Login.jsp" class="active"><span>ADMIN</span></a></li>
          <li><a href="U_Login.jsp"><span>USER</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/header_img.jpg" alt="" width="568" height="355" />
      <h2>Goods trade, accounts payable, invoice processing,<br />
dispute management, blockchain, smart contract</h2>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	   <h2 align="center" class="style5 style6"><span class="style6">View</span> <span class="style6">User</span> <span class="style6">Profile..</span></h2>
	          <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<%@ include file="connect.jsp" %>
					<%
						
						String user1=request.getParameter("value");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user1+"'"; 
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
								
					%>
					<tr><td rowspan="8" >
						<div style="margin:10px 13px 10px 13px;" >
                		<a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:230px;"  />
				   		</a>                	</div>
					</td>
					<tr/>
					<tr>
					  <td  width="150" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style6 style5" style="margin-left:20px;"><b >Username</b></div></td>
						<td  width="300" valign="middle" height="40" style="color:#000000;"><div align="left" class="style4" style="margin-left:20px;">
						  <%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="120" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style7 style5" style="margin-left:20px;">E-Mail</div></td>
						<td  width="72" valign="middle" height="40" style="color:#000000;"><div align="left" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style6 style5" style="margin-left:20px;"><strong >Mobile</strong></div></td>
						<td  width="82" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style6 style5" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
					  <td  width="100" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style6 style5" style="margin-left:20px;"><strong>Gender</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
					<tr>
					  <td   width="100" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style6 style5" style="margin-left:20px;"><strong >Address</strong></div></td>
						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><%out.println(s4);%></div></td>
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
              <h2 align="right">&nbsp;</h2>
			<% String type=request.getParameter("type");
			if(type.equalsIgnoreCase("goodbad")){%>
            <h2 align="right"><a href="A_GoodBadBehav.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("vgoodbad")){%>
            <h2 align="right"><a href="A_VGoodBadBehav.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("share"))
			{%>
            <h2 align="right"><a href="A_ImgVidDetail.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("image"))
			{%>
            <h2 align="right"><a href="A_ImgDetail.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("video"))
			{%>
            <h2 align="right"><a href="A_VidDetail.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("tweets"))
			{%>
            <h2 align="right"><a href="A_ViewTweets.jsp" class="style4">Back</a></h2>
			<%}

			%>
	  <h2>&nbsp;</h2>
	  			
  
      </div>
      <div class="right">
        <h2>Home Menu</h2>
        <ul>
          <li><a href="A_Main.jsp">HOME</a></li>
          <li><a href="A_Login.jsp">LOGOUT</a></li>
          </ul>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <h2>&nbsp;</h2>
        <div class="search"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div align=center></div></body>
</html>
