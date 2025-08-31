<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Accounts Register</title>
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
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.accno.value;
if(na3=="")

{
alert("Please Enter Account number");
document.s.accno.focus();
return false;
}
else
{

}
var na4=document.s.branch.value;
if(na4=="")

{
alert("Please Enter Branch");
document.s.branch.focus();
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



if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na8=document.s.address.value;
if(na8=="")

{
alert("Please Enter the Address ");
document.s.address.focus();
return false;
}

var na9=document.s.amount.value;
if(na9=="")

{
alert("Please Enter Amount");
document.s.amount.focus();
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
	   <h2 class="style2 style3"><span class="style3">User</span> <span class="style3">Bank</span> <span class="style3">Acccount</span> <span class="style3">Registration</span> </h2>
	   
	   <%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*" %>
                      <%@ page import="java.util.*" %>
                      <%@ page import="com.oreilly.servlet.*" %>
                      <%
			       
					String uname=(String)application.getAttribute("uname");
	                    String query1="select * from user  where username='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
					if ( rs1.next() )
					   {
					   String s1=rs1.getString("email");
					   String s2=rs1.getString("mobile");
					    String s3=rs1.getString("address");
					   
	   %>
	   
        <form name="s" action="User_Acc_Reg_ins.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
                      
                          <label for="name">Account Number(required)</label>

                        <p>
                          <input id="name" name="accno" class="text" />
                        </p>
                        <label for="password">Branch (required)</label>
                        <p>
                          <input type="text" id="branch" name="branch" class="text" />
                        </p>
                        <label for="email">Email Address (required)</label>
                        <p>
                          <input type="text" id="em" name="email" class="text" value="<%=s1%>" />
                        </p>
                        <label for="mobile">Mobile Number (required)</label>
                        <p>
                          <input id="mobile" name="mobile" class="text" value="<%=s2%>"/>
                        </p>
                        <label for="address">Your Address</label>
                        <p>
                           <input type="text" id="address" name="address" class="text" value="<%=s3%>"/>
                        </p>
                        
                          <label for="amount">Amount (required)</label>
                       
                        <p>
                          <input id="amount" name="amount" class="text" />
                        </p>
                        <p><br />
                            <input name="submit" type="submit" value="Create Account" />
                        </p>
                        <p>&nbsp;</p>
                        <h5 align="center"> <a href="Account_Management.jsp">Back</a></h5>
                      
        </form>
          <%}%>
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
