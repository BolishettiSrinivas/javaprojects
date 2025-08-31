<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User View All Posts</title>
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
.style3 {color: #FF00FF}
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
          <li><a href="A_Login.jsp"><span>ADMIN</span></a></li>
          <li><a href="U_Login.jsp" class="active"><span>USER</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/header_img.jpg" alt="" width="568" height="355" />
      <h2>Goods trade, accounts payable, invoice processing,<br />
dispute management, blockchain, smart contract.</h2>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	   
                <h2 class="style4"> <span class="style3"></span> <span class="style3">All</span> <span class="style3">Posts</span></h2>
                      <h1>&nbsp;</h1>
			
                <p>
				
				<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
				
                  <%
				  
				  
				  String user=(String)application.getAttribute("uname");
				 double total=0,found=0;
							try
							{
								String input="",keyword="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="";
							
								int p_Rank=0,id=0;
								
								
								
							%>
	
				<p class="style12 style5"><%="Mobile Products"%></p>
		
		<%				
				                String sql="select * from mposts";
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(sql);
								while(rs.next())
										{
								id=rs.getInt(1);
								s1=rs.getString(2);
								s11=rs.getString(10);
								
			
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_MobileDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="allproducts"%>"><span class="style15 style7"><%="  "+s1%></span> </a></p>
     <%

		
		
	 }
		 							
						%><p class="style12 style5"><%="Other Products"%></p>
		
		<%				
				                String sql2="select * from oposts";
								Statement st2=connection.createStatement();
								ResultSet rs2=st.executeQuery(sql2);
								while(rs2.next())
										{
								id=rs2.getInt(1);
								s1=rs2.getString(2);
								s2=rs2.getString(4);

									   
													
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_OtherDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="allproducts"%>"><span class="style15 style7"><%="  "+s1%></span> </a></p>
     <%
		} 		
						 }
						 catch(Exception e){}
				
			%>	
			
			
                <div class="style11">
                  <div align="right"><a href="U_Main.jsp">Back</a></div>
                
			
                </div>  
      </div>
      <div class="right">
        <h2>Home Menu</h2>
        <ul>
          <li><a href="U_Main.jsp">Home</a></li>
          <li><a href="U_Login.jsp">LOGOUT</a></li>
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
