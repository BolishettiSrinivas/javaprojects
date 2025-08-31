<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>PPI :: User Select  page</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

    </head>
<body>

<div  style="width:610px;">
  <!-- end of forever header -->
  <div id="tooplate_main">
      <div style="width:600px;">
       	  <div class="post_box">
            	<h2>List Of Users !!!  </h2>
                <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr>
 						<td  width="120" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
  						<td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Mobile</strong></div></td>
 						<td   width="80" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Email</strong></div></td>
						<td  width="120" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Send Request </b></div></td>
					</tr>
					<%
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						
						String uname = (String)application.getAttribute("uname");
						try 
						{
							String status1=null;
						   	String status=null;
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while(rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								//s8=rs.getString(8);
								status ="request";
								if(s1.equalsIgnoreCase(uname)){
								}
								else{
								
								String query7="select * from request where (requestfrom='"+uname+"'||requestto='"+uname+"')" ; 
						   		Statement st7=connection.createStatement();
						   		ResultSet rs7=st7.executeQuery(query7);
								while(rs7.next()){
									String rfrom =rs7.getString(2);
									String rto =rs7.getString(3);
									status1 = rs7.getString("status");
									
									if((!status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1)))){
										status="sent";
									}
									else if((status1.equalsIgnoreCase("Accepted"))&&(rfrom.equalsIgnoreCase(s1)||(rto.equalsIgnoreCase(s1)))){
										status="Already Friend";
									}
									
								}	
								
					%>
					<tr>
						<td  width="72" valign="baseline" height="0" style="color:#000000;">&nbsp;&nbsp;<%out.println(s1);%></td>	
						<td  width="82" valign="baseline" height="0">&nbsp;&nbsp;<%out.println(s3);%></td>
						<td  width="82" valign="baseline" height="0">&nbsp;&nbsp;<%out.println(s2);%></td>
						
						
						<%
						if(status.equals("Already Friend")){
						%>
						<td  width="100" valign="baseline" height="0" style="color:#000000;"align="center"><%=status %>&nbsp;</td>
						<%
						}else if(status.equals("sent")){
						%>
						<td  width="100" valign="baseline" height="0" style="color:#000000;"align="center"><%=status %>&nbsp;</td>
						<%
						}else{
						
						%>
						<td  width="100" valign="baseline" height="0" style="color:#000000;"align="center"><a href="updatefriendlist.jsp?username=<%=s1%>&id=<%=i%>"><%=status %>&nbsp;</a></td>
						<%}
						%>
					</tr>
					<%
					
						}
						}
						connection.close();
					}
					catch(Exception e)
					{
						//out.println(e.getMessage());
					}
					%>

					<tr>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						
					</tr>
				</table>
				
       	  </div>
      </div>    	

    	<div class="cleaner"></div>
    </div> <!-- end of main -->
    <div id="tooplate_main_bottom"></div>

</div> <!-- wrapper -->


</body>
</html>