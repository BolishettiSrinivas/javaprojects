<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
<title>PPI : User Information adding page</title>

<%
	try{
		String requestto = request.getParameter("username");
		String uid=request.getParameter("id");
		int userid =Integer.parseInt(uid);
		String requestfrom = (String)application.getAttribute("uname");  
	
 		String sql3="select * from request where requestto='"+requestto+"' && requestfrom='"+requestfrom+"'";
       	Statement stmt3 = connection.createStatement();
	   	ResultSet rs2=stmt3.executeQuery(sql3);
		if(rs2.next()){
			%>
			<jsp:forward page="selectfriend.jsp" />
			<%
		}
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						String status = "waiting";
						
	   	String sql="insert into request(requestfrom,requestto,dt,userid,status) values ('"+requestfrom+"','"+requestto+"','"+dt+"','"+userid+"','"+status+"')";
       	Statement stmt = connection.createStatement();
	   	int n =stmt.executeUpdate(sql);
		out.println(n);
	   	if(n>0)
	   	{
			request.setAttribute("msg","successfully recommendation Sent");
			%>
			<jsp:forward page="selectfriend.jsp" />
			<%
	    	//response.sendRedirect("register.jsp");
			
			
			
     	}
	    else
	    {	
			request.setAttribute("msg","Failure in Recommendation");
			%>
			<jsp:forward page="selectfriend.jsp" />
			<%
	    	//response.sendRedirect("register.jsp");
      	}
	}catch(Exception e)
	{
		out.print(e);
	}
%>

