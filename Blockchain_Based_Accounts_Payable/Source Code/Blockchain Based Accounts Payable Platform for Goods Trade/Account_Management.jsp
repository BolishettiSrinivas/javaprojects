<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Account Management</title>
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
dispute management, blockchain, smart contract</h2>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	   <h2 class="style3"><span class="style3">WELCOME</span> <span class="style3">TO</span> <span class="style3">ACCOUNT</span> <span class="style3">MANAGMENT</span> <span class="style3">mr</span>/<span class="style3">ms</span>.<%=(String)application.getAttribute("uname")%> </h2>
        
				<li><a href="User_Acc_Reg.jsp">Create Account</a> </li>
				<li><a href="Add_Amount.jsp">Add Money</a> </li>
				<li><a href="View_User_Acc_Detail.jsp">View Account</a> </li>
				<li><a href="User_Ministatment.jsp">Ministatement</a> </li>
          <p>&nbsp;</p>
		 <div align="right"> <a href="U_Main.jsp">Back</a> </div>
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
