<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>PPI : User search page</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="#" width="650" style="margin-right:5px">
    	
   	<div id="#" width="650" style="margin-left:2px; margin-right:2px;">  
		<form action="susers.jsp" method="post">
			<table border="3" width="600" style="margin-left:2px; margin-right:2px;">
				<caption style="height:50px; background-color:#999999; font-size:18px; font-family:'Times New Roman', Times, serif;" valign="bottom">User Search Form</caption> 
				<tr>
					<td align="right">USER NAME </td>
					<td width="100"><input type="text" name="keyword" /></td>
					<td height="35" colspan="2" id="learn_more" align="left"  style="color:#FFFFFF;"><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/></td>
               	</tr>
			</table>
		</form>
		
    	<table border="3" width="600" style="margin-left:2px; margin-right:2px;"> <tr>
		<%
		try{   
			String username = request.getParameter("keyword");   
			String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						int i=0;
			Statement stmt=connection.createStatement();
			String strQuery = "select * from user where username  LIKE '%"+username+"%' order by username ASC";
			ResultSet rs = stmt.executeQuery(strQuery);
			
			int row=0;
			while ( rs.next() )
					   		{
							String status="request";
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								//s4=rs.getString(6);
								//s5=rs.getString(7);
								//s6=rs.getString(8);
								//s7=rs.getString(9);
								s8=rs.getString(8);
								
								String query1="select * from request where userid='"+i+"'"; 
						   		Statement st1=connection.createStatement();
						   		ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next()){
									String status1 = rs1.getString("status");
									if(!status1.equals("Accepted")){
										status="sent";
									}else{
										status="Already Friend";
									}
								}
								
					%>
					<tr>
						<td  width="72" valign="baseline" height="0" style="color:#000000;">&nbsp;&nbsp;<%out.println(s1);%></td>	
						<td  width="82" valign="baseline" height="0">&nbsp;&nbsp;<%out.println(s3);%></td>
						<td  width="82" valign="baseline" height="0">&nbsp;&nbsp;<%out.println(s2);%></td>
						
						
						
						<td  width="100" valign="baseline" height="0" style="color:#000000;"align="center"><a href="updatefriendlist.jsp?username=<%=s1%>&id=<%=i%>"><%=status%>..&nbsp;</a></td>
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

					<tr>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						
					</tr>
				</table>
				
	  		<div > <strong height="57" colspan="2" id="learn_more" align="center" bgcolor="#000000" style="color:#FFFFFF;">
				<a href="susers.jsp" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;">BACK </a></strong>
			</div>
	  </div>
	  
             
	  <div class="cleaner"></div>
    </div> <!-- wrapper -->


</body>
</html>