<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Accounts Register Status</title>
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
	    <p>
                      <%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*" %>
                      <%@ page import="java.util.*" %>
                      <%@ page import="com.oreilly.servlet.*" %>
                      <%
			       
					String uname=(String)application.getAttribute("uname");
				    
					
										
								
					
					
					
					try {
						
							
		String accno=request.getParameter("accno");
		String branch=request.getParameter("branch");
		String email=request.getParameter("email");
		String mno =request.getParameter("mobile");
		String addr =request.getParameter("address");
		String amount =request.getParameter("amount");
		
		
						
			 			String query1="select * from account  where acc_no='"+accno+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
</p>
                    </p>
                    <p class="style6">Account Number Already Exist</p>
                    <p class="style5">&nbsp;</p>
                    <%
							
							
				%>
                    <p align="left"><a href="User_Acc_Reg.jsp" class="style5 style14">Back</a></p>
                    <%
				
					   }
					   else
					   {
					   
					
PreparedStatement ps=connection.prepareStatement("insert into account(acc_no,user,address,email,mob,branch,amount) values(?,?,?,?,?,?,?)");
						ps.setString(1,accno);
						ps.setString(2,uname);
						ps.setString(3,addr);
						ps.setString(4,email);	
						ps.setString(5,mno);
						ps.setString(6,branch);
						ps.setString(7,amount);
					
						
				       
						
											
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <p class="style6">Account Created Successfully</p>
                    <p>&nbsp; </p>
                    <p>
                      <%	
							
			%>
                    </p>
                    <p align="left"><a href="Account_Management.jsp" class="style16">Back</a></p>
                    <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                    </p>
<p>&nbsp;</p>
                    <p>&nbsp;</p>
        </form>
          
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
