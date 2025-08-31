<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="connect.jsp" %>
 <%@ page import="java.sql.*"%>
 <style type="text/css">
<!--
.style3 {color: #FF00FF}
-->
 </style>
<head>
<title>User Accounts Detail</title>
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
.style5 {color: #000066}
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
	   <h2 class="style3">User :<span class="style8 style21"> <%=(String)application.getAttribute("uname")%>'s</span> Profile</h2>
                     
                      <table width="315" border="2" align="center"  cellpadding="0" cellspacing="0"  >
                       
						
                        <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5,s6;
						int j=0;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(2);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
								
								
								
								
					%>
                        <tr>
                          <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7 style15 style9 style21 style3" style="margin-left:20px;"><strong>Account Number </strong></div></td>
                          <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(i);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7 style15 style9 style21 style3" style="margin-left:20px;"><strong>User Name </strong></div></td>
                          <td  width="164" valign="middle" height="40"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s1);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7 style15 style9 style21 style3" style="margin-left:20px;"><strong>Address</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s2);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style7 style15 style9 style21 style3" style="margin-left:20px;"><strong>Email</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s3);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style7 style15 style9 style21 style3" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                          <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s4);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style7 style15 style9 style21 style3" style="margin-left:20px;"><strong>Branch</strong></div></td>
                          <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                              <%out.println(s5);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td   width="145" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style7 style15 style9 style21 style3" style="margin-left:20px;"><strong>Amount</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                              <div align="left" class="style23 style9 style10 style5" style="margin-left:20px;">
                                <%out.println(s6);%>
                            </div></td>
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
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>                
					   <p align="center"  ><a href="Account_Management.jsp">Back</a></p>
         
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
