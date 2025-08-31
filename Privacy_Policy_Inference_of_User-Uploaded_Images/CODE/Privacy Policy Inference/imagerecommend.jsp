<%@ page import="java.sql.*,java.util.Random,java.lang.*" %>
<%@ include file="connect.jsp" %>
<html>
<title>PPI : user status changing</title>
<body>
	<center>&nbsp;</center>
	
	<%
	String msg=null;
		try {
  		
		String recommendto = request.getParameter("recommendto");
		String img = request.getParameter("imgid");
		int imgid = Integer.parseInt(img);
		//out.println(img);
		
		Statement stmt1=connection.createStatement();
		String strQuery1 = "select * from imagerecommend where recommendto ='"+recommendto+"' && imgid='"+imgid+"'";
		ResultSet rs1 = stmt1.executeQuery(strQuery1);
		if(rs1.next()){
			msg="Already Recommended this image";
		
		}else{
		
		String uname = (String )application.getAttribute("uname");
   		
	   		//out.println("hi");
       		Statement st1 = connection.createStatement();
       		String query1 ="insert into imagerecommend(recommendfrom,recommendto,imgid) values('"+uname+"','"+recommendto+"','"+imgid+"')";
	   		int n=st1.executeUpdate(query1);
			//out.println(n);
	   		connection.close();
			msg="Image successfully recommended";
       	}
		request.setAttribute("msg",msg);
		}
      	catch(Exception e)
     	{
		//	out.println(e.getMessage());
   		}
		
   		//response.sendRedirect("recommendlistofimages.jsp");  
	%>
		<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> <%=msg%></span> </p>
                
</body>
</html>