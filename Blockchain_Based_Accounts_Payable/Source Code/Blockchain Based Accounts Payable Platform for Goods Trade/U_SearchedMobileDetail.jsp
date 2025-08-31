<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Posts</title>
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
	  <h2><span class="style3">User</span> <span class="style3">View</span> <span class="style3">Mobile</span> <span class="style3"><%=request.getParameter("name")%></span> </h2>
     <table width="500" >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
		String name=request.getParameter("name");
		//int id=Integer.parseInt(request.getParameter("id")); 
		
						String s1="",s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						String id = request.getParameter("id");
						try 
						{	
						    						
							ArrayList al=new ArrayList();
							
						   	String sql="select * from mposts where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		if(rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(12);
								s3=rs.getString(13);
								s4=rs.getString(3);
								s5=rs.getString(4);
								s6=rs.getString(5);
								s7=rs.getString(6);
								s8=rs.getString(7);
								s9=rs.getString(8);
								s10=rs.getString(9);
								s11=rs.getString(10);
								s12=rs.getString(11);
								int rank=rs.getInt(14);
								
								
					%>
					<tr>
					<td colspan="3">
					
				<img src="images.jsp?id=<%=i%>&value=<%="mimage"%>" width="130" height="100" align="middle" />				</td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style26 style3" >Name:</h4></td>
				  <td class="style28" > <%=s1%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Category:</h4></td>
					<td class="style28" > <%=s2%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Sub-Category:</h4></td>
					<td class="style28" > <%=s3%></td>
				</tr>
				
				<tr>
				  <td height="0" bgcolor="#FF0000"><h4 class="style28 style3" >Price:</h4></td>
					<td class="style28" > <%=s4%>/- Rs</td>
				    </td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Size:</h4></td>
					<td class="style28" > <%=s5%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Color:</h4></td>
					<td class="style28" > <%=s6%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >OS:</h4></td>
					<td class="style28" > <%=s7%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Internal Memory:</h4></td>
					<td class="style28" > <%=s8%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >External Memory:</h4></td>
					<td class="style28" > <%=s9%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Mobile Processor:</h4></td>
					<td class="style28" > <%=s10%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Mobile Descrition:</h4></td>
					<td class="style28" > <%=s11%></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Rank:</h4></td>
					<td class="style28" >  <p><%=rank%> </p></td>
				</tr>
				<tr>
			      <td height="0" bgcolor="#FF0000"> <h4 class="style28 style3" >Rating</h4></td>
                    <td>
        <%
					 
    if(rank==3)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/1.png" width="30" height="30" >
    	<%
    }
    if(rank>3 && rank<=6)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
    	<%
    }
    if(rank>6 && rank<=9)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
    	<%
    }
    if(rank>9 && rank<=12)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
    	<%
    }
    if(rank>12 && rank<=15)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
    	<%
    }
    if(rank>15)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
    	<%
    }
    %></td></tr>
				
		
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
	 
	 <table align="left">
<tr>
  <td><a href="U_MakeMobileComment.jsp?name=<%=s1%>&id=<%=id%>"> COMMENT </a></td>
</tr>
</table>
<table align="left">
<tr>
 <td><a href="Buy_Verification.jsp?name=<%=s1%>&id=<%=id%>"> BUY </a></td>
</tr>
</table>
 
 <h2 align="right">&nbsp;</h2>
			<% String type=request.getParameter("type");
			if(type.equalsIgnoreCase("topk")){%>
            <h2 align="right"><a href="U_TopKMobSearch.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("search")){%>
            <h2 align="right"><a href="U_SearchMobile.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("comment"))
			{%>
            <h2 align="right"><a href="U_Main.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allproducts"))
			{%>
            <h2 align="right"><a href="U_AllProducts.jsp" class="style4">Back</a></h2>
			<%}

			%>	 

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
