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
	  <h2><span class="style3"> View Purchased Products </span> <span class="style6">and Process </span></h2>
  
      <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong> SI NO </strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Product Image</strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Product Name</strong></div></td>
			  <td  width="114" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Customer</strong></div></td>
		      <td  width="114" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Purchased Date</strong></div></td>
			  <td  width="112" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Product Price</strong></div></td>
			  <td  width="112" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style21 style15"><strong>Process Order</strong></div></td>
			  
          </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=1;
						try 
						{
						   	String query="select * from buy "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							
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
			  <%
						if(s6.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle"  style="color:#000000;"align="center"><div align="center" class="style20 style30 style37 style86 style70 style71">
                  <div align="center"><a href="Authentication.jsp?value=<%="apstatus"%>&amp;id=<%=id%>&amp;user=<%=s2%>&amp;pname=<%=s1%>" class="style3">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="76" align="center"  valign="middle"><div align="center" class="style20 style37 style55 style30 style71 style72">
                  <%out.println(s6);%>
              </div></td>
              <%
						}
						
						%>
			  
			  
            </tr>
            <%
					i=i+1;
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
			  <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
        </table>
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
