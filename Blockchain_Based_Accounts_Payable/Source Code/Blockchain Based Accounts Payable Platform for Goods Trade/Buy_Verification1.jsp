<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Posts Buy</title>
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
dispute management, blockchain, smart contract</h2>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	  <h2><span class="style3">Buy</span> <span class="style3"></span> <span class="style3"><%=request.getParameter("name")%></span> </h2>
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

			   
    try
	{
			int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0,sum=0;
			int accno=0;
  			String s1,s2,s3,s4;
			
			
			String user=(String)application.getAttribute("uname");
			
			String mname=request.getParameter("name");
			int id=Integer.parseInt(request.getParameter("id"));
			
			 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
				Date now = new Date();
		
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;



   
			
			String sql3="SELECT acc_no FROM account where user='"+user+"' ";
			Statement stmt3 = connection.createStatement();
			ResultSet rs3 =stmt3.executeQuery(sql3);
			if(rs3.next()==true)
			{
								accno=rs3.getInt(1);	
			}
			
			String sql="SELECT * FROM account where user='"+user+"' and acc_no='"+accno+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
								uamount=Integer.parseInt(rs.getString(8));				
																
								String sql1="SELECT * FROM oposts where o_name='"+mname+"' and id='"+id+"' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								
								if(rs1.next()==true)
								{
										int id1=rs1.getInt(1);
										int rank1=rs1.getInt(11);
										pprice=Integer.parseInt(rs1.getString(3));
										if(pprice>uamount)
										{
											out.println("Insufficiant Amount"); 
											
											out.println(  "still need ");
											out.println(pprice-uamount+"want to add ");
											
											%>
											<a href="Add_Amount2.jsp?type=<%="osearch"%>">ADD AMOUNT</a>
											<%
										}
										else
										{
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												String sql2="Update account set amount='"+leftamount+"'  where user='"+user+"' ";
												Statement stmt2 = connection.createStatement();
												stmt2.executeUpdate(sql2);
												//ResultSet rs2=
												//if(rs2.next()==true)
												//{
													String type="other";
													String status="waiting";
													//String category=(String)application.getAttribute("category");
													PreparedStatement ps1=connection.prepareStatement("insert into buy(mname,user,date,price,p_id,type,status) values(?,?,?,?,?,?,?)");
														ps1.setString(1,mname);
														ps1.setString(2,user);
														ps1.setString(3,dt);
														ps1.setInt(4,pprice);	
														ps1.setInt(5,id);
														ps1.setString(6,type);
														ps1.setString(7,status);
														
														ps1.executeUpdate();
													
													int rank=rank1+1;
														
												String sql30="Update oposts set rank="+rank+"  where id='"+id1+"' ";
												Statement stmt20 = connection.createStatement();
												stmt20.executeUpdate(sql30);
			                                       
													 
													response.sendRedirect("Buy_Successful1.jsp");
													
																
											}
								
						
									}
					
					}
					
					else
					{
						out.print("Account Not Found");
						
					}
									
					
		connection.close();
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
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
