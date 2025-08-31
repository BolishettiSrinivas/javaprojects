<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="connect.jsp"%>
<style type="text/css">
<!--
.style3 {color: #FF00FF}
-->
</style>
<head>
<title>User Accounts Ministatement</title>
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
dispute management, blockchain, smart contract.</h2>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	   <h2 class="style4"><span class="style3">User :<span class="style8 style21"> <%=(String)application.getAttribute("uname")%>'s</span> MiniStatment</span></h2>
                      <h1>&nbsp;</h1>
					  
                <table width="545" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <tr bgcolor="#00FF33">
              <td width="108" height="30"><div align="center" class="style21 style25">id</div></td>
              <td width="171"><div align="center" class="style26">product Name</div></td>
		      <td width="171"><div align="center" class="style26">Date</div></td>
		      <td width="171"><div align="center" class="style26">Price</div></td>
              <%	  
			  
			  String user=(String)application.getAttribute("uname");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
      	try 
	{
	
      		String query="select * from buy where user='"+user+"' and status='Processed' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(6);
		s3=rs.getString(5);
		
		%>
            </tr>
            <tr>
              <td height="28"><div align="center" class="style25"><%=i%></div></td>
              <td height="28"><div align="center" class="style25"><%=s1%></div></td>
			   <td height="28"><div align="center" class="style25"><%=s3%></div></td>
			   <td height="28"><div align="center" class="style25"><%=s2+"/-RS"%></div></td>
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
