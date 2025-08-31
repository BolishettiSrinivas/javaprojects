<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin View User's Search History </title>
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
.style5 {
	color: #FF0000;
	font-weight: bold;
}
.style6 {color: #FFFFFF}
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
	  <h2><span class="style3">Admin</span> <span class="style3">View User's Search History</span> </h2>
  
   <table width="426" border="2" align="left" >
                                  <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
                                  <%@ page import="java.sql.*"%>
                                  <%@ include file="connect.jsp" %>
                                  <%@ page import="java.util.Date" %>
                                  <%@ page import="java.util.Scanner" %>
                                  <%
		
		
		String s1,s2,i1,i2;
		int m=0,n=0;
		try{
			String sql="select distinct user,type from search_history";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				String uname=rs.getString(1);
				String type=rs.getString(2);
				if(type.equalsIgnoreCase("mobile"))
				{
				
			%>
			 <tr>
			   <td colspan="3" bgcolor="#F0F0F0"><div align="center"><span class="style8 style5">Mobile Searched Result of </span><span class="style19"> <strong> <%=uname%></strong> </span></div></td>
			</tr>
              <%
			
			String sql1="select distinct(result) from search_history where user='"+uname+"' and type='"+type+"'";
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			while(rs1.next())
			{
			//String type=rs1.getString(1);
			String result=rs1.getString(1);
			
			String sql2="select id from mposts where m_name='"+result+"'";
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(sql2);
			if(rs2.next())
			{
				int i=rs2.getInt(1);
			%>
             <tr>
			   <td width="171" bgcolor="#FF0000"><input  name="image" type="image" style="width:100px; height:100px;" src="images.jsp?id=<%=i%>&amp;value=<%="mimage"%>" align="middle"/></td>
                  <td  width="237" height="30" align="center" valign="middle" bgcolor="#FF0000"> <a href="A_ViewAllMobPostsConti.jsp?id=<%=i%>&name=<%=result%>&type=<%="userssearch"%>" class="style6""> 
               <%out.print(result);%> </a></td>
	      </tr>
			<%
				}}}
				else
				{
				%>
			 <tr>
				<td colspan="3"><div align="center"><span class="style8 style5">Other Products Searched Result of </span><span class="style19"><strong><%=uname%> </strong> </span></div></td>
			</tr>
              <%}
			
			String sql1="select distinct(result) from search_history where user='"+uname+"' and type='"+type+"'";
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			while(rs1.next())
			{
			//String type=rs1.getString(1);
			String result=rs1.getString(1);
			
			String sql2="select id from oposts where o_name='"+result+"'";
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(sql2);
			if(rs2.next())
			{
				int j=rs2.getInt(1);
			%>
             <tr>
				<td width="171" bgcolor="#FF0000"><input  name="image" type="image" style="width:100px; height:100px;" src="images.jsp?id=<%=j%>&amp;value=<%="oimage"%>" align="middle"/></td>
                  <td  width="237" height="30" align="center" valign="middle" bgcolor="#FF0000"> <span class="style20 style6"><a href="A_ViewAllOtherPostsConti.jsp?id=<%=j%>&name=<%=result%>&type=<%="userssearch"%>" ><%=result%> </a></span></td>
	      </tr>
				<%
				}}}
		 connection.close();
		   }
		  
		   catch(Exception e)
		    {
            out.println(e.getMessage());
          }%>
        </table>
		
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
