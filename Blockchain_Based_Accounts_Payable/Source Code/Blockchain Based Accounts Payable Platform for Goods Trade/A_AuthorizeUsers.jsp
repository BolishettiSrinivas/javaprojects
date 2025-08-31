<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin AuthorizeUsers</title>
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
.style3 {color: #FFFFFF}
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
	  <h2>List All Users And Authorize</h2>
         <table width="913" align="center"  cellpadding="0" cellspacing="0">
            <tr bgcolor="#9999FF">
              <td width="51" height="37" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>ID</strong></div></td>
              <td width="157" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>User Image</strong></div></td>
              <td width="121" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>User Name</strong></div></td>
              <td width="142" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Email</strong></div></td>
              <td width="135" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Mobile</strong></div></td>
              <td width="121" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Location</strong></div></td>
              <td width="108" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style3"><strong>Status</strong></div></td>
          </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s5=rs.getString(5);
								s3=rs.getString("location");
								s4=rs.getString(10);
								
					%>
            <tr>
              <td height="122" align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style70 style71"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              <td  rowspan="1" align="center" valign="middle" ><div class="style57 style86 style55 style54 style37 style70 style71" style="margin:10px 13px 10px 13px;" ><strong>
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:120px; height:100px;" />
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
              <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle"  style="color:#000000;"align="center"><div align="center" class="style20 style30 style37 style86 style70 style71">
                  <div align="center"><a href="Authentication.jsp?value=<%="userstatus"%>&amp;id=<%=i%>" class="style3">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="76" align="center"  valign="middle"><div align="center" class="style20 style37 style55 style30 style71 style72">
                  <%out.println(s4);%>
              </div></td>
              <%
						}
						
						%>
            </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
      </table>
		
		<p align="right"><a href="A_Main.jsp">Back</a></p>
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
