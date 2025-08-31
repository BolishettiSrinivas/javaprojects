<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Purchased Products  and Process</title>
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
.style4 {color: #000000}
.style5 {color: #FFFFFF}
.style6 {color: #FF0000}
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
	  <h2><span class="style3"> View Purchased Products </span> <span class="style6">By Blockchian </span></h2>
  
     
	 
			<%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>                         

		  
		  
         <%
					  
						// Creation Of Blockchain 
						
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,hsign;
						int i=0,j=1,k=0;
												
						int count1=1;
						
						try 
						{
						String str1 = " select distinct(h_code) from mposts ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						hsign = rs1.getString(1);
						count1=count1+1;
						   	String query="select * from Buy where h_code = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s1=rs.getString(2);
							
							%>
		
		  <p>&nbsp;
        </p>
	    <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong> SI NO </strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Product Image</strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Product Name</strong></div></td>
			  <td  width="114" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Customer</strong></div></td>
		      <td  width="114" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Purchased Date</strong></div></td>
			  <td  width="112" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Product Price</strong></div></td>
	
          </tr>
			
			<h2><p class="style2">Product Block Chain ::<span class="style2"> <%=s1%></span><br>Under Hash Code    ::<%=hsign%></p></h2>
			
			<%
							
							}
			  
								int id=rs.getInt(1);
							    int p_id=rs.getInt(4);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
			   
			    
					%>
           <tr>
              <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
			 <td width="116" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
				 <% if(s5.equalsIgnoreCase("mobile"))
				  {%>
              	
                  <input  name="image" type="image" src="images.jsp?id=<%=p_id%>&value=<%="mimage"%>" style="width:90px; height:90px;"  />
             	
			  <%}
			  else
			  {%>
			  	
                  <input  name="image" type="image" src="images.jsp?id=<%=p_id%>&value=<%="oimage"%>" style="width:90px; height:90px;"  />
           
			  <%}%>
			   </a> </div></td>
			  
			  <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    <%out.println(s1);%>
					<p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                  
                     <a href="A_UserProfile.jsp?value=<%=s2%>&type=<%="purch"%>"> <%out.println(s2);%></a>
                   
                    <p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                  
                      <%out.println(s3);%>
                   
                    <p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style5">&nbsp;</p>
                  <div align="center" class="style22 style5">
                    
                      <%out.println(s4+"/- Rs");%>
                  
                    <p>&nbsp; </p>
              </div></td>
			  
			  
            </tr>
            <%
								j=j+1; }
			   }
			 
			 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            
	 
		<div align="right"><a href="AP_Main.jsp"> Back</a></div>
  
  
      </div>
      <div class="right">
        <h2>Home Menu</h2>
        <ul>
          <li><a href="AP_Main.jsp">HOME</a></li>
          <li><a href="AP_Login.jsp">LOGOUT</a></li>
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
