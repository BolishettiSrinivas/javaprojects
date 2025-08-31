<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>PPI :: Admin menu page</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="#" width="650" style="margin-right:5px">
    	
   	<div id="#" width="650" style="margin-left:2px; margin-right:2px;">  
		<form action="sibmdata.jsp" method="post">
			<table border="3" width="600" style="margin-left:2px; margin-right:2px;">
				<caption style="height:50px; background-color:#999999; font-size:18px; font-family:'Times New Roman', Times, serif;" valign="bottom">
				User Searching Images Based on Meta Data 
				</caption> 
				<tr>
					<td align="right">USER INPUT</td>
					<td width="100"><input type="text" name="keyword" /></td>
					<td height="35" colspan="2" id="learn_more" align="left"  style="color:#FFFFFF;"><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/></td>
               	</tr>
			</table>
		</form>
		
    	<table border="3" width="600" style="margin-left:2px; margin-right:2px;"> <tr>
		<%
		try{   
			String mdata = request.getParameter("keyword");   
			String s1=null,s2=null,s3=null,s4=null;
			String uname = (String)application.getAttribute("uname");			
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
						if(!mdata.equalsIgnoreCase(""))
						{
							Statement st3 = connection.createStatement();
						   	String query3 ="insert into searchhistory(username,keyword,dt) values('"+uname+"','"+mdata+"','"+dt+"')";
						   	st3.executeUpdate (query3); 	   
						}
			
			Statement stmt=connection.createStatement();
			String strQuery = "select * from images where color  LIKE '%"+mdata+"%' || uses LIKE '%"+mdata+"%'";
			ResultSet rs = stmt.executeQuery(strQuery);
			int row=0;
			
			while(rs.next()){
						
			int i=rs.getInt(1);
			s1=rs.getString(2);
			s2=rs.getString(3);
			s3=rs.getString(4);
			s4=rs.getString(6);
			int c = rs.getInt(8);
			String image=rs.getString(10);
			String imguser=rs.getString(11);
						
			c=c+1;
			    	Statement st9 = connection.createStatement();
					String query9 ="update images set count="+c+" where id="+i+"";
					st9.executeUpdate(query9);
			
				if(s4.indexOf("All")>=0){
			%>	
				<tr>
					<td>
						<div style="margin:10px 13px 10px 13px;" >
                			<a class="lightbox" id="img1" href="#" title="<%= "Tag :"+s1+"\n Color :"+s2+"\n Annotation :"+s3 %>">
								<input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:270px; height:120px;" class="image_wrapper"  />
	               			</a>
							<form action="imagerecommend.jsp" method="get">
						<select name="recommendto" >
						<option>select</option>
						<%
						int uid=0;
						String uuu=null;
						Statement stmt1=connection.createStatement();
						String strQuery1 = "select * from user where username !='"+uname+"'";
						ResultSet rs1 = stmt1.executeQuery(strQuery1);
						while(rs1.next()){
						uid = rs1.getInt(1);
						String username = rs1.getString(2);
						
						
						Statement stmt2=connection.createStatement();
						String strQuery2 = "select * from request where (requestfrom ='"+username+"' || requestto='"+username+"') && status ='Accepted' ";
						ResultSet rs2 = stmt2.executeQuery(strQuery2);
						while(rs2.next()){
						
						if(rs2.getString(2).equals(uname)){
							uuu = rs2.getString(3);
						}else{
							uuu = rs2.getString(2);
						}
						%>
						<option> <%=uuu%></option>
						<%
						}
						}
						%>
						</select>
						<input type="hidden" name="imgid" value="<%=i%>" />
						<input type="submit" value="Recommend" />
						</form>
						</div>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Image Added By :</span> <%=imguser%> </p>
                	</td>
					<td  width="600">
                		<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Tag :</span><%=s1%></p>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Color :</span><%=s2%></p>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Description:</span> <%=s3%> </p>
					</td>
				</tr>
               	<%
				}	else if(s4.indexOf("Content|Metadata")>=0){
				%>
				<tr>
					<td><div style="margin:10px 13px 10px 13px; width:270px;" >
						<p style="color:#006600;">Policy  is not applied to view Image</p>
						<form action="imagerecommend.jsp" method="get">
						<select name="recommendto" >
						<option>select</option>
						<%
						int uid=0;
						String uuu=null;
						Statement stmt1=connection.createStatement();
						String strQuery1 = "select * from user where username !='"+uname+"'";
						ResultSet rs1 = stmt1.executeQuery(strQuery1);
						while(rs1.next()){
						uid = rs1.getInt(1);
						String username = rs1.getString(2);
						
						
						Statement stmt2=connection.createStatement();
						String strQuery2 = "select * from request where (requestfrom ='"+username+"' || requestto='"+username+"') && status ='Accepted' ";
						ResultSet rs2 = stmt2.executeQuery(strQuery2);
						while(rs2.next()){
						
						if(rs2.getString(2).equals(uname)){
							uuu = rs2.getString(3);
						}else{
							uuu = rs2.getString(2);
						}
						%>
						<option> <%=uuu%></option>
						<%
						}
						}
						%>
						</select>
						<input type="hidden" name="imgid" value="<%=i%>" />
						<input type="submit" value="Recommend" />
						</form>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Image Added By :</span> <%=imguser%> </p></div>
                	</td>
					<td  width="600">
                		<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Tag :</span><%=s1%></p>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Color :</span><%=s2%></p>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Description:</span> <%=s3%> </p>
					</td>
				</tr>
               	<%}else if(s4.indexOf("Content|Image")>=0){
				%>
				<tr>
					<td>
						<div style="margin:10px 13px 10px 13px;" >
                			<a class="lightbox" id="img1" href="#" title="<%= "Annotation :"+s3 %>">
								<input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:270px; height:120px;" class="image_wrapper"  />
	               			</a>
							<form action="imagerecommend.jsp" method="get">
						<select name="recommendto" >
						<option>select</option>
						<%
						int uid=0;
						String uuu=null;
						Statement stmt1=connection.createStatement();
						String strQuery1 = "select * from user where username !='"+uname+"'";
						ResultSet rs1 = stmt1.executeQuery(strQuery1);
						while(rs1.next()){
						uid = rs1.getInt(1);
						String username = rs1.getString(2);
						
						
						Statement stmt2=connection.createStatement();
						String strQuery2 = "select * from request where (requestfrom ='"+username+"' || requestto='"+username+"') && status ='Accepted' ";
						ResultSet rs2 = stmt2.executeQuery(strQuery2);
						while(rs2.next()){
						
						if(rs2.getString(2).equals(uname)){
							uuu = rs2.getString(3);
						}else{
							uuu = rs2.getString(2);
						}
						%>
						<option> <%=uuu%></option>
						<%
						}
						}
						%>
						</select>
						<input type="hidden" name="imgid" value="<%=i%>" />
						<input type="submit" value="Recommend" />
						</form>
						</div>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Image Added By :</span> <%=imguser%> </p>
                	</td>
					<td  width="600">
						<p style="color:#006600;">Policy  is not applied to view Metadata</p>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Description:</span> <%=s3%> </p>
				  </td>
				</tr>
               	<%}else if(s4.indexOf("Metadata|Image")>=0){
				%>
				<tr>
					<td>
						<div style="margin:10px 13px 10px 13px;" >
                			<a class="lightbox" id="img1" href="#" title="<%= "Tag :"+s1+"\n Color :"+s2 %>">
								<input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:270px; height:120px;" class="image_wrapper"  />
	               			</a>
							<form action="imagerecommend.jsp" method="get">
						<select name="recommendto" >
						<option>select</option>
						<%
						int uid=0;
						String uuu=null;
						Statement stmt1=connection.createStatement();
						String strQuery1 = "select * from user where username !='"+uname+"'";
						ResultSet rs1 = stmt1.executeQuery(strQuery1);
						while(rs1.next()){
						uid = rs1.getInt(1);
						String username = rs1.getString(2);
						
						
						Statement stmt2=connection.createStatement();
						String strQuery2 = "select * from request where (requestfrom ='"+username+"' || requestto='"+username+"') && status ='Accepted' ";
						ResultSet rs2 = stmt2.executeQuery(strQuery2);
						while(rs2.next()){
						
						if(rs2.getString(2).equals(uname)){
							uuu = rs2.getString(3);
						}else{
							uuu = rs2.getString(2);
						}
						%>
						<option> <%=uuu%></option>
						<%
						}
						}
						%>
						</select>
						<input type="hidden" name="imgid" value="<%=i%>" />
						<input type="submit" value="Recommend" />
						</form>
						</div>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Image Added By :</span> <%=imguser%> </p>
                	</td>
					<td  width="600">
                		<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Tag :</span><%=s1%></p>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Color :</span><%=s2%></p>
						<p style="color:#006600;">Policy  is not applied to view Content</p>
						
					</td>
				</tr>
               	<%}else if(s4.indexOf("Content")>=0){
				%>
				<tr>
					<td><div style="margin:10px 13px 10px 13px; width:270px;" >
					<p style="color:#006600;">Policy  is not applied to view Image</p>
					<form action="imagerecommend.jsp" method="get">
						<select name="recommendto" >
						<option>select</option>
						<%
						int uid=0;
						String uuu=null;
						Statement stmt1=connection.createStatement();
						String strQuery1 = "select * from user where username !='"+uname+"'";
						ResultSet rs1 = stmt1.executeQuery(strQuery1);
						while(rs1.next()){
						uid = rs1.getInt(1);
						String username = rs1.getString(2);
						
						
						Statement stmt2=connection.createStatement();
						String strQuery2 = "select * from request where (requestfrom ='"+username+"' || requestto='"+username+"') && status ='Accepted' ";
						ResultSet rs2 = stmt2.executeQuery(strQuery2);
						while(rs2.next()){
						
						if(rs2.getString(2).equals(uname)){
							uuu = rs2.getString(3);
						}else{
							uuu = rs2.getString(2);
						}
						%>
						<option> <%=uuu%></option>
						<%
						}
						}
						%>
						</select>
						<input type="hidden" name="imgid" value="<%=i%>" />
						<input type="submit" value="Recommend" />
						</form>
					<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Image Added By :</span> <%=imguser%> </p></div>
                </td>
				<td  width="600">
				<p style="color:#006600;">Policy  is not applied to view Metadata</p>
                	<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Description:</span> <%=s3%> </p>
				  </td>
				</tr>
               	<%
				}else if(s4.indexOf("Image")>=0){
				%>
				<tr>
					<td>
						<div style="margin:10px 13px 10px 13px;" >
                			<a class="lightbox" id="img1" href="#" title="#">
								<input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:270px; height:120px;" class="image_wrapper"  />
	               			</a>
							<form action="imagerecommend.jsp" method="get">
						<select name="recommendto" >
						<option>select</option>
						<%
						int uid=0;
						String uuu=null;
						Statement stmt1=connection.createStatement();
						String strQuery1 = "select * from user where username !='"+uname+"'";
						ResultSet rs1 = stmt1.executeQuery(strQuery1);
						while(rs1.next()){
						uid = rs1.getInt(1);
						String username = rs1.getString(2);
						
						
						Statement stmt2=connection.createStatement();
						String strQuery2 = "select * from request where (requestfrom ='"+username+"' || requestto='"+username+"') && status ='Accepted' ";
						ResultSet rs2 = stmt2.executeQuery(strQuery2);
						while(rs2.next()){
						
						if(rs2.getString(2).equals(uname)){
							uuu = rs2.getString(3);
						}else{
							uuu = rs2.getString(2);
						}
						%>
						<option> <%=uuu%></option>
						<%
						}
						}
						%>
						</select>
						<input type="hidden" name="imgid" value="<%=i%>" />
						<input type="submit" value="Recommend" />
						</form>
						</div>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Image Added By :</span> <%=imguser%> </p>
                	</td>
					<td  width="600">
                		<p style="color:#006600;">Policy  is not applied to view Metadata</p>
						<p style="color:#006600;">Policy  is not applied to view Content</p>
				  </td>
				</tr>
               	<%	}else if(s4.indexOf("Metadata")>=0){
				%>
				<tr>
					<td><div style="margin:10px 13px 10px 13px; width:270px;" >
						<p style="color:#006600;">Policy  is not applied to view Image</p>
						<form action="imagerecommend.jsp" method="get">
						<select name="recommendto" >
						<option>select</option>
						<%
						int uid=0;
						String uuu=null;
						Statement stmt1=connection.createStatement();
						String strQuery1 = "select * from user where username !='"+uname+"'";
						ResultSet rs1 = stmt1.executeQuery(strQuery1);
						while(rs1.next()){
						uid = rs1.getInt(1);
						String username = rs1.getString(2);
						
						
						Statement stmt2=connection.createStatement();
						String strQuery2 = "select * from request where (requestfrom ='"+username+"' || requestto='"+username+"') && status ='Accepted' ";
						ResultSet rs2 = stmt2.executeQuery(strQuery2);
						while(rs2.next()){
						
						if(rs2.getString(2).equals(uname)){
							uuu = rs2.getString(3);
						}else{
							uuu = rs2.getString(2);
						}
						%>
						<option> <%=uuu%></option>
						<%
						}
						}
						%>
						</select>
						<input type="hidden" name="imgid" value="<%=i%>" />
						<input type="submit" value="Recommend" />
						</form>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666">Image Added By :</span> <%=imguser%> </p>
						</div>
                	</td>
					<td  width="600">
                		<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Tag :</span><%=s1%></p>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Color :</span><%=s2%></p>
						<p style="color:#006600;">Policy  is not applied to view Content</p>
					</td>
				</tr>
               	<%}else{}
						
    				}
					
    				rs.close();
    				connection.close();
 					stmt.close();
  					}catch(Exception e)
					{
						e.getMessage();
					}
					%>
				</tr>
			</table>
	  		<div > <strong height="57" colspan="2" id="learn_more" align="center" bgcolor="#000000" style="color:#FFFFFF;">
				<a href="usersearchoption.jsp" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;">BACK </a></strong>
			</div>
	  </div>
	  
             
	  <div class="cleaner"></div>
    </div> <!-- wrapper -->


</body>
</html>