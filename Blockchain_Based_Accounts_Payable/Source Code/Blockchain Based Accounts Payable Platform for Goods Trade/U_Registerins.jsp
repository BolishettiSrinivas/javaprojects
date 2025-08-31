<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register Insert</title>
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
	  <h2> User Login </h2>
       <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*" %>
            <%@ page import="java.util.*" %>
            <%@ page import="com.oreilly.servlet.*" %>
            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,uname="",pass="",email="",mno="",addr="",dob="",gender="",pincode="",location="",image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("location"))
							{
								location=multi.getParameter(paramname);
							}
							
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
						
						
						if(uname.equals("")||pass.equals("")||email.equals("")||mno.equals("")||location.equals("")||addr.equals("")||gender.equals("--Select--")|dob.equals(""))
{			
		  %>
            <br/>
            <br/>
            <p align="center" class="style32 style18 style44 style43 style48 style6"><strong>Please enter all the details..</strong></p>
            <span class="style46"><br/>
            </span>
            <p align="center"><span class="style51"><a href="U_Register.jsp" class="style10 style52">Back</a></span></p>
            <%
}
else
{
						
			 			String query1="select * from user  where username='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
            <br/>
            <br />
            <br />
            <p align="center" class="style24 style31">User Name Already Exist..</p>
            <br />
            <p align="center"><span class="style52"><a href="U_Register.jsp" class="style10 style52">Back</a><a href="U_Register.jsp" class="style49"></a></span></p>
            <p align="center">
              <%
				
					   }
					   else
					   {
					   
					  String status = "Waiting";
PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,mobile,address,location,dob,gender,status,image) values(?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,addr);
						ps.setString(6,location);
						ps.setString(7,dob);
						ps.setString(8,gender);
						ps.setString(9,status);
				
						ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));	
						
						if(f == 0)
							ps.setObject(9,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(9,fs1,fs1.available());
						}	
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
            </p>
            <br/>
            <p align="center" class="style42 style25 style32">Registration Successful..</p>
            <br />
            <p align="center"><a href="U_Register.jsp" class="style10 style52">Back..</a><a href="U_Login.jsp" style="margin-left:15px;" class="style10 style52">Login..</a></p>
            <%
			
					}}}}
					catch (Exception e) 
					{
						out.println(e);
					}
			%>
	  
      </div>
      <div class="right">
        <h2>Home Menu</h2>
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="A_Login.jsp">Admin</a></li>
          <li><a href="U_Login.jsp">User</a></li>
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
