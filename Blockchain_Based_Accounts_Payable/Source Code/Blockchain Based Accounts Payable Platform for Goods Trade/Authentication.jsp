
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPairGenerator,javax.crypto.Cipher,java.security.Key,java.security.KeyPair     "%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>


<style type="text/css">
<!--
.style2 {font-size: 18px}
.style3 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
.style4 {font-size: 18px; font-weight: bold; }
-->
</style>
<%
   
   
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
						 Date now = new Date();
			
						 String strDate = sdfDate.format(now);
						 String strTime = sdfTime.format(now);
						 String date = strDate + "   " + strTime;  
   
   
   
   
   
    try
	{
	
			String value=request.getParameter("value"); 
			
			if(value.equalsIgnoreCase("userlogin"))
			{
					String username=request.getParameter("userid"); 
         			String password=request.getParameter("pass");
					String sql = "SELECT * FROM user where username='"+username+"' and password='"+password+"'";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM user where username='"+username+"' and status='Authorized' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									int i = rs1.getInt(1);
									
									application.setAttribute("uname", username);
									response.sendRedirect("U_Main.jsp");
								}
								else
								{
										%>
								
									
									<br/>
									<p align="center" class="style3">You are not Authorized by the Admin, Please wait!! </p>
									<p align="center" class="style3"><br/>
								      <a href="U_Login.jsp" class="style4">Back</a></p>
									<p>
									  <%
								 }
					
					}
					else
					{
						response.sendRedirect("U_Wrong_Login.jsp");
					}
			
			
			}
			if(value.equalsIgnoreCase("aplogin"))
			{
			
	
			
					String username=request.getParameter("userid"); 
         			String password=request.getParameter("pass");
					String sql = "SELECT * FROM ap where username='"+username+"' and password='"+password+"'";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								
									response.sendRedirect("AP_Main.jsp");
								
					}
					else
					{
						response.sendRedirect("U_Wrong_Login.jsp");
					}
			
			
			}
			
			else if(value.equalsIgnoreCase("adminlogin"))
			{
					String username=request.getParameter("userid"); 
         			String password=request.getParameter("pass");
					String sql = "SELECT * FROM admin where username='"+username+"' and password='"+password+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
									
									response.sendRedirect("A_Main.jsp");
					
					}
					else
					{
						response.sendRedirect("A_Wrong_Login.jsp");
					}
			
			
			}
			
			
			else if(value.equalsIgnoreCase("userstatus"))
			{
					
					int id=Integer.parseInt(request.getParameter("id"));

					String sql1="update user set status='Authorized' where id='"+id+"'";
					Statement stmt1 = connection.createStatement();
					int k =stmt1.executeUpdate(sql1);
					if(k>0)
					{
					
						
						response.sendRedirect("A_AuthorizeUsers.jsp");
					}
					else
					{
							%>
						  
						</p>
						<p align="center" class="style3">Permision Not Granted..Please Try Again..<br/>
						  <br/>
						</p>
						<p align="center" class="style3"><a href="A_AuthorizeUsers.jsp" class="style2">Back</a>
						</p>
						<%
					 }
					
			
			}
			
			else if(value.equalsIgnoreCase("apstatus"))
			{
					
					int id=Integer.parseInt(request.getParameter("id"));
					int id1=Integer.parseInt(request.getParameter("id"));
					String uname=request.getParameter("user");
					String pname=request.getParameter("pname");
					
						//Generate Hash Code Based on Descritption Start
								String namefile="filename.txt";
								PrintStream p=new PrintStream(new FileOutputStream(namefile));
								p.print(new String(pname));
								
								MessageDigest md=MessageDigest.getInstance("SHA1");
								FileInputStream fis11=new FileInputStream(namefile);				
								DigestInputStream dis1=new DigestInputStream(fis11,md);
								BufferedInputStream bis1=new BufferedInputStream(dis1);				
								while(true)
								{
								
									int b1=bis1.read();
									if(b1==-1)
									
									break;
								}
								
								BigInteger bi1=new BigInteger(md.digest());
								String spl1=bi1.toString();
								String hcode=bi1.toString(16);
					

					String sql1="update Buy set status='Processed',h_code='"+hcode+"' where id='"+id+"'  and user='"+uname+"' and mname='"+pname+"'  ";
					Statement stmt1 = connection.createStatement();
					int k =stmt1.executeUpdate(sql1);
					if(k>0)
					{
					
						
						response.sendRedirect("AP_ViewPurchasedPosts.jsp");
					}
			}
			
			else
			{}
			
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
								    </p>
									