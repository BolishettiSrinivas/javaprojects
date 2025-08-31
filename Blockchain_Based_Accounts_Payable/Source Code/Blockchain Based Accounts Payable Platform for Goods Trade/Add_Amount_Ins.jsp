<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<% 



    try{
	        
			 
	  		int amount1=0,amount2=0;
			String accno=request.getParameter("accno");      
   	        String amount=request.getParameter("amount");

			String user=(String)application.getAttribute("uname");
			
			String sql="SELECT * FROM account where user='"+user+"' and acc_no='"+accno+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
					amount1=Integer.parseInt(rs.getString(8));
					
					
					
			
			    int amount3=Integer.parseInt(amount);
				
				
				amount2=amount3+amount1;
				
				String amt=String.valueOf(amount2);


				
				String sql1="update account set amount='"+amt+"' where acc_no='"+accno+"' ";
				Statement stmt1 = connection.createStatement();
				stmt1.executeUpdate(sql1);
			
			
		
		out.print("Money Added Successfully");
		}
			else{
			out.print("Account not found");
			}
		%><br/><br/>
		<h2 align="right">&nbsp;</h2>
			<% String type=request.getParameter("type");
			if(type.equalsIgnoreCase("msearch")){%>
            <h2 align="right"><a href="U_SearchMobile.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("osearch")){%>
            <h2 align="right"><a href="U_SearcOther.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user"))
			{%>
            <h2 align="right"><a href="Account_Management.jsp" class="style4">Back</a></h2>
			<%}
			
			
		connection.close();
		
		
	}
	
	
	catch(Exception e)
	{
		out.print(e);
	}
	
%>