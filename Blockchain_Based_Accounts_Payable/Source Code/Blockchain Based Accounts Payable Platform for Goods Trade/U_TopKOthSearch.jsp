<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Top k Mobile Search Posts</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
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
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.top.value;
if(na3=="")

{
alert("Please Enter keyword");
document.s.top.focus();
return false;
}
else
{

}
}
</script>
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

     <form name="s" action="U_TopKOthSearch.jsp" method="post" onSubmit="return valid()"  ons target="_top">           
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="139"><div align="center" class="style3">
                        <div align="right" class="style12">
                          <div align="center">Select Top 'K' Other posts </div>
                        </div>
                      </div></TD>
                      <TD width="187">
                        <div align="left"><INPUT TYPE="text" name="top" /></div></TD>
						<TD width="83"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2"><div align="center" class="style13"></div>
                      </div></TD>
                    </TR>
                  </TABLE>
                </DIV>
                <P>&nbsp; </P>
        </FORM>
			
			<p>
                    <%
	
      	
	

      	try 
	{
		           int one=Integer.parseInt(request.getParameter("top"));	
		          
				  String q2="select * from oposts order by rank DESC LIMIT 0,"+one+""; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	 while ( rs8.next() )
       	   {
       	
       		    int id=rs8.getInt(1);
       	        String	s1=rs8.getString(2);
			 	String s2=rs8.getString(9);
			    String  Rank =rs8.getString(11);
       
    	
    	
               
       	%>
        <p> <div align="center" class="style11"><span class="style4">Post Name : </span><span class="style15"> <%=s1%></span></div></p>
               <p> <div align="center" class="style11"><span class="style4">Categorie</span> <span class="style15"> : <span class="style16"><%=s2%></span></span></div>
               </p>
                <p><div align="center" class="style11"><span class="style4">Post Rank : </span> <span class="style15"> <%=Rank%></span></div></p>
                <p><div align="center" class="style5 style14"><span class="style11">View <a href="U_SearchedOtherDetail.jsp?id=<%=id%>&name=<%=s1%>&type=<%="topk"%>">Details</a></span></div></p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  
						 }
				
	
				
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
<p align="right"><a href="U_Main.jsp">Back</a></p>
      </div>
      <div class="right">
        <h2>Products Menu</h2>
        <ul>
         <%
		try
							{   
							    int one=Integer.parseInt(request.getParameter("top"));
								String s1="",s2="",s3="",s4="",s5="",s6="",s7="";
								String strDate="",strTime="",dt="";
								String input="",keyword="";
								
							
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								int p_Rank=0,id=0;
								%>
          <p class="style12 style5"> <%="Featured Brands"%> </p>
		
		<%				
				                String sql="select * from oposts";
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(sql);
								while(rs.next())
										{
								id=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(7);
								
			
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedOtherDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="topk"%>"><span class="style15 style7"><%="  "+s1%></span> </a></p>
     <%

		
		
	 }

										
						%><p class="style12 style5"><%="Color"%></p>
		
		<%				
				                String sql2="select * from oposts";
								Statement st2=connection.createStatement();
								ResultSet rs2=st.executeQuery(sql2);
								while(rs2.next())
										{
								id=rs2.getInt(1);
								s1=rs2.getString(2);
								s2=rs2.getString(4);
								s3=rs2.getString(7);

									
													
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedOtherDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="topk"%>"><span class="style15 style7"><%="  "+s2%></span> </a></p>
     <%
		} 
		
		
			%><p class="style12 style5"><%="Model"%></p>
		
		<%				
				                String sql3="select * from oposts";
								Statement st3=connection.createStatement();
								ResultSet rs3=st.executeQuery(sql3);
								while(rs3.next())
										{
									id=rs3.getInt(1);
								s1=rs3.getString(2);
								s6=rs3.getString(6);
								s3=rs3.getString(7);
								
			
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedOtherDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="topk"%>"><span class="style15 style7"><%="  "+s6%></span> </a></p>
     <%
		} 
		
		
		%><p class="style12 style5"><%="Price"%></p>
		
		<%				
				                String sql4="select * from oposts";
								Statement st4=connection.createStatement();
								ResultSet rs4=st4.executeQuery(sql4);
								while(rs4.next())
										{
									id=rs4.getInt(1);
								s1=rs4.getString(2);
								s6=rs4.getString(3);
								
			
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedOtherDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="topk"%>"><span class="style15 style7"><%="  "+s6%></span> </a></p>
     <%
		} 
		
		
		%><p class="style12 style5"><%="Manufacturer"%></p>
		
		<%				
				                String sql6="select * from oposts";
								Statement st6=connection.createStatement();
								ResultSet rs6=st.executeQuery(sql6);
								while(rs6.next())
										{
									id=rs6.getInt(1);
								s1=rs6.getString(2);
								s6=rs6.getString(5);
								s3=rs6.getString(7);
								
			
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedOtherDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="topk"%>"><span class="style15 style7"><%="  "+s6%></span> </a></p>
     <%
		} 
				
					}
					
					catch(Exception e){						  
						e.printStackTrace();
					}
						  
				%>
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
