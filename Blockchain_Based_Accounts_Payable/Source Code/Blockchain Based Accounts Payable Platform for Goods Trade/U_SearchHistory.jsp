<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Posts History</title>
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
.style4 {color: #FFFFFF}
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
	  <h2 class="style2"> <span class="style3">User <span class="style18 style18"><%=(String)application.getAttribute("uname")%></span> SearchHistory</span> </h2>
	 <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
        <tr bgcolor="#99CCCC">
          <td  width="68" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style4">SI NO</div></td>
          <td  width="110" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style4">Post Name </div></td>
          <td  width="117" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style4">Sub-Categorie</div></td>
          <td  width="146" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style4">Searched Keyword</div></td>
          <td  width="145" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style4">Date</div></td>
		   <td  width="145" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22 style4">Image</div></td>
        </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						
						try 
						{
						   
							String user=(String)application.getAttribute("uname");
							String s1="",s2="",s3="",s4="";
							int i=1;
						    
						   	String query="select * from search_history where user='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
							int p_id=rs.getInt(7);
					
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style6 style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <div align="center" class="style23">
                    <%out.println(i);%>
                </div>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <%out.println(s3);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <%out.println(s2);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <%out.println(s1);%>
                </div></td>
				<td  valign="baseline" height="0"><p class="style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <%out.println(s4);%>
                </div></td>
				<td width="229"><div style="margin:10px 13px 10px 13px;" >
				
				<%if(s2.equalsIgnoreCase("mobile")){%>
                  <input  name="image" type="image" src="images.jsp?value=<%="mimage"%>&id=<%=p_id%>" style="width:50px; height:50px;" />
				  <%}
				  else
				  {%>
				    <input  name="image" type="image" src="images.jsp?value=<%="oimage"%>&id=<%=p_id%>" style="width:50px; height:50px;" />
				  <%}%>
              </div></td>
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
            </tr>
        </table>
		<p align="right"><a href="U_Main.jsp">Back</a></p>
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
