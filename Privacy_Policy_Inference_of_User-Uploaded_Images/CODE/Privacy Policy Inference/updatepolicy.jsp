<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<html><title>PPI : user status changing</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
		String input[] = request.getParameterValues("policy");
		String str = "";
		for(String in:input){
		str = str+"|"+in;
		}
  		int mid = Integer.parseInt(request.getParameter("imgid"));
		String username =(String)application.getAttribute("uname");
   		try {
	   		
				
       		Statement st1 = connection.createStatement();
       		String query1 ="update images set policy='"+str+"' where id="+mid+" && uname = '"+username+"' ";
	   		st1.executeUpdate (query1);
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		response.sendRedirect("policylistofimages.jsp");  
	%>
</body>
</html>