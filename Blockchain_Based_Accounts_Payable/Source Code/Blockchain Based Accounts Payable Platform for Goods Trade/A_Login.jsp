<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SellerLogin</title>
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

<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}


}
</script> 

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
          <li><a href="A_Login.jsp" class="active"><span>Seller</span></a></li>
          <li><a href="U_Login.jsp"><span>BUYER</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/header_img.jpg" alt="" width="568" height="355" />
      <h2>Goods trade, accounts payable, invoice processing,<br />
dispute management, blockchain, smart contract</h2>
      <div class="clr"></div>
    </div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	  <h2>Seller Login</h2>
        <form name="s" action="Authentication.jsp?value=<%="adminlogin"%>" method="post"  onSubmit="return valid()"  ons target="_top"> 
            <table width="454" border="0" cellpadding="2" cellspacing="2">
              <tr>
                <td height="62" colspan="2" align="center" ><img src="images/alogin.jpg" width="433" height="84" /></td>
              </tr>
              <tr>
                <td width="212" height="62" align="center" bgcolor="#FFFFFF"><div align="center" class="style29">User Name (required)</div></td>
                <td width="228" bgcolor="#FFFFFF"><input id="userid" name="userid" type="text" /></td>
              </tr>
              <tr>
                <td height="46" align="center" bgcolor="#FFFFFF"><div align="center" class="style29">Password (required)</div></td>
                <td bgcolor="#FFFFFF"><input type="password" id="pass" name="pass" class="text" /></td>
              </tr>
              <tr>
                <td height="44" bgcolor="#FFFFFF">&nbsp;</td>
                <td bgcolor="#FFFFFF"><span class="style19">
                  <input name="imageField2" type="submit"  class="LOGIN" id="imageField2" value="Login" />
                </span></td>
              </tr>
          </table>
            <div align="right"><a href="index.html" class="style21" style="text-decoration:underline">Back</a> </div>
        </form>
		
		
      </div>
      <div class="right">
        <h2>Home Menu</h2>
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="A_Login.jsp">Seller</a></li>
          <li><a href="U_Login.jsp">Buyer</a></li>
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
