<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login</title>
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



var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.email.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na5=document.s.pic.value;
if(na5=="")

{
alert("choose profile pic");
document.s.pic.focus();
return false;
}


var na8=document.s.address.value;
if(na8=="")

{
alert("Please Enter the Address ");
document.s.address.focus();
return false;
}

var na9=document.s.gender.value;
if(na9=="")

{
alert("Please Enter Your Gender");
document.s.gender.focus();
return false;
}

var na10=document.s.location.value;
if(na10=="")

{
alert("please Enter Yourlocation");
document.s.location.focus();
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
	  <h2 class="style3"> <span class="style3">User</span> <span class="style3">Registration</span></h2>
       <form name="s" action="U_Registerins.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top"> 
            <label for="name"><span class="style45"><span class="style31"><br />
            (*) Required </span><br />
            </span></label>
            <table width="517" height="459" border="0" cellpadding="2" cellspacing="2">
              <tr>
                <td colspan="2"><span class="style3"><img src="images/register.png" width="270" height="134" /></span></td>
              </tr>
              <tr>
                <td width="126" bgcolor="#FF0000"><span class="style33 style4">
                  <label for="label"><strong>User Name *</strong></label>
                </span></td>
                <td width="377"><span class="style45">
                  <input name="userid" class="text" id="name" size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style4">
                  <label for="label"><strong>Password *</strong></label>
                </span></td>
                <td><span class="style45">
                  <input name="pass" type="password" class="text" id="password" size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style4">
                  <label for="label"><strong>Email-Id<strong> *</strong></strong></label>
                </span></td>
                <td><span class="style45">
                  <input name="email" class="text" id="email" size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style4">
                  <label for="label"><strong>Mobile Number <strong>*</strong> </strong></label>
                </span> </td>
                <td><span class="style45">
                  <input name="mobile" class="text" id="mobile" size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style4">
                  <label for="label"><strong>Your Address <strong>*</strong> </strong> </label>
                </span></td>
                <td><textarea id="address" name="address" rows="2" cols="31"></textarea></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style4">
                  <label for="gender"><strong>Your Location <strong>*</strong> </strong> </label>
                </span></td>
                <td><span class="style45">
                  <input name="location" class="text" id="dob" size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style4">
                  <label for="gender"><strong>Date of Birth <strong>*</strong> </strong> </label>
                </span></td>
                <td><span class="style45">
                  <input name="dob" class="text" id="dob" size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style4">
                  <label for="gender"><strong>Select Gender * </strong></label>
                </span> </td>
                <td><span class="style38">
                  <select id="s1" name="gender" style="width:224px;" class="text">
                    <option>--Select--</option>
                    <option>MALE</option>
                    <option>FEMALE</option>
                  </select>
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style4">
                  <label for="label"><strong>Select Profile <strong> *</strong> </strong></label>
                </span></td>
                <td><input name="pic" type="file" class="text " id="pic" />                </td>
              </tr>
              <tr>
                <td colspan="2"><div align="center">
                    <input name="submit" type="submit" value="REGISTER" style="width:170px;height:40px;font-weight:bold;background-color:#0099FF;border-radius:10%;" />
                </div></td>
              </tr>
          </table>
            <p align="right"><a href="U_Login.jsp" class="style3"><strong>Back</strong></a></p>
        </form>
	  
	  
	  
      </div>
      <div class="right">
        <h2>Home Menu</h2>
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="A_Login.jsp">Admin</a></li>
          <li><a href="U_Login.jsp">User</a></li>
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
