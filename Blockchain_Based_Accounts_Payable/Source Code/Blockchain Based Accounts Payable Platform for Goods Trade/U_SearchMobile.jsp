<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
				

<head>
<title>User Search Posts</title>
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
.style3 {color: #FF00FF}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.keyword.value;
if(na3=="")

{
alert("Please Enter keyword");
document.s.keyword.focus();
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
	   
                <h2 class="style4"> <span class="style3">Search</span> <span class="style3">Mobile</span> <span class="style3">Posts</span></h2>
                      <h1>&nbsp;</h1>
					  
               <form name="s" action="U_SearchMobile.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><div align="center" class="header">
                        <div align="right" class="style12">
                          <div align="center">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2"><div align="center" class="style13">( searching content Based on Post Description)</div></div></TD>
                    </TR>
                  </TABLE>
               </DIV>
                <P>&nbsp; </P>
            </FORM>
			
	  <p><%
	  
	  try
							{
							String user=(String)application.getAttribute("uname");
								String s10="",keyword="",s20="",s30="",s50="",s60="";
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								double found=0,total=0,ratio=0;
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
				
								String sql8="select * from mposts ";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									i=rs8.getInt(1);
								    s10 = rs8.getString(2);
									s20 = rs8.getString(13);
									s30 = rs8.getString(10);    
									int s40 = rs8.getInt(14);
								      total++;
									  
									   String des=s30.toLowerCase();
					
										if ((des.contains(keyword)))
										{
										 found++ ;
								String sql12="select * from search_history where result='"+s10+"' and keyword='"+keyword+"' and user='"+user+"' ";
								Statement st12=connection.createStatement();
								ResultSet rs12=st12.executeQuery(sql12);
								if(rs12.next())
										{
										int rank1=rs12.getInt(8);
										rank=rank1+1;
								connection.createStatement().executeUpdate("update search_history set rank=rank+1 where result='"+s10+"'   ");
										}  
										else
										{
									   int s_rank=0;
									   String sql6="insert into search_history(user,keyword,type,result,dt,p_id,rank) values('"+user+"','"+keyword+"','"+s20+"','"+s10+"','"+dt+"','"+i+"','"+s_rank+"')";
						Statement st6=connection.createStatement();
						st6.executeUpdate(sql6);
									   
									  }
										
									%>
        </P>
 </p>
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="mimage"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
               <p> 
               <div align="center" class="style11"><span class="style4">Mobile Name : </span><span class="style15"> <%=s10%></span></div></p>
                <p><div align="center" class="style11"><span class="style4">Mobile Rank : </span> <span class="style15"> <%=s40%></span></div></p>
                <p><div align="center" class="style5 style14"><span class="style11">View <a href="U_SearchedMobileDetail.jsp?id=<%=i%>&name=<%=s10%>&type=<%="search"%>">Details</a></span></div></p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	}
							
						 }
						
						 ratio=((found/total)*100);
					
					String sql12="select * from searchratio where keyword='"+keyword+"' ";
								Statement st12=connection.createStatement();
								ResultSet rs12=st12.executeQuery(sql12);
								if(rs12.next())
										{
										String strQuery2 = "update searchratio set ratio='"+ratio+"' where keyword='"+keyword+"' ";
								connection.createStatement().executeUpdate(strQuery2);
					}
					else{
  String sql1="insert into searchratio(keyword,found,total,ratio,dt)values('"+keyword+"','"+(int)found+"','"+(int)total+"','"+ratio+"','"+dt+"')";
				Statement st1=connection.createStatement();
			st1.executeUpdate(sql1);	
					}
			%>	
			
			<h2 align="right">search ratio=<%=(int)found%>:<%=(int)total%></h2>
			<p>&nbsp;</p>
						
				<%	}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  
	  
	  </p>        
                <div class="style11">
                  <div align="right"><a href="U_Main.jsp">Back</a></div>
                
			
                </div>  
      </div>
      <div class="right">
        <h2>Mobile Menu</h2>
        <ul>
         
                  <%
				  
				
							try
							{
							   String	input= request.getParameter("keyword");	
								String keyword = input.toLowerCase();
								String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",des="";
								int p_Rank=0,id=0;
								
								
				%>			
				<p class="style12 style5"><%="Featured Brands "%></p>
	        	<%				
				                String sql="select * from mposts";
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(sql);
								while(rs.next())
										{
								id=rs.getInt(1);
								s1=rs.getString(2);
								des=rs.getString(10).toLowerCase();   
								  if ((des.contains(keyword)))
										{}else{
								
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedMobileDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="search"%>"><span class="style15 style7"><%="  "+s1%></span> </a></p>
     <%

		}
		
	 }
		 
										
						%><p class="style12 style5"><%="display"%></p>
		
		<%				
				                String sql2="select * from mposts";
								Statement st2=connection.createStatement();
								ResultSet rs2=st.executeQuery(sql2);
								while(rs2.next())
										{
								id=rs2.getInt(1);
								s1=rs2.getString(2);
								s2=rs2.getString(4);
								des=rs2.getString(10).toLowerCase();  
								  if ((des.contains(keyword)))
										{}else{
													
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedMobileDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="search"%>"><span class="style15 style7"><%="  "+s2%></span> </a></p>
     <%
		} 
}
			%><p class="style12 style5"><%="color"%></p>
		
		<%				
				                String sql3="select * from mposts";
								Statement st3=connection.createStatement();
								ResultSet rs3=st.executeQuery(sql3);
								while(rs3.next())
										{
									id=rs3.getInt(1);
								s1=rs3.getString(2);
								s6=rs3.getString(5);
							    des=rs3.getString(10).toLowerCase();   
								  if ((des.contains(keyword)))
										{}else{
			
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedMobileDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="search"%>"><span class="style15 style7"><%="  "+s6%></span> </a></p>
     <%
		} }
		 	
						%><p class="style12 style5"><%="os"%></p>
		
		<%				
				                String sql4="select * from mposts";
								Statement st4=connection.createStatement();
								ResultSet rs4=st.executeQuery(sql4);
								while(rs4.next())
										{
								id=rs4.getInt(1);
								s7=rs4.getString(6);
							   des=rs4.getString(10).toLowerCase();   
								  if ((des.contains(keyword)))
										{}else{
						
			
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedMobileDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="search"%>"><span class="style15 style7"><%="  "+s7%></span> </a></p>
     <%
		} }
		
				
							%><p class="style12 style5"><%="internaml memory"%></p>
		
		<%				
				                String sql5="select * from mposts";
								Statement st5=connection.createStatement();
								ResultSet rs5=st.executeQuery(sql5);
								while(rs5.next())
										{
								id=rs5.getInt(1);
								s8=rs5.getString(7);
							     
								des=rs5.getString(10).toLowerCase();  
								  if ((des.contains(keyword)))
										{}else{
								 
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedMobileDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="search"%>"><span class="style15 style7"><%="  "+s8%></span> </a></p>
     <%
		} 
		}
						
						%><p class="style12 style5"><%="External memory"%></p>
		
		<%				
				                String sql6="select * from mposts";
								Statement st6=connection.createStatement();
								ResultSet rs6=st.executeQuery(sql6);
								while(rs6.next())
										{
								id=rs6.getInt(1);
								s8=rs6.getString(8);
								des=rs6.getString(10).toLowerCase();   
								  if ((des.contains(keyword)))
										{}else{
		
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedMobileDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="search"%>"><span class="style15 style7"><%="  "+s8%></span> </a></p>
     <%
		} }
							
							%><p class="style12 style5"><%="Mobile Processor"%></p>
		
		<%				
				                String sql7="select * from mposts";
								Statement st7=connection.createStatement();
								ResultSet rs7=st.executeQuery(sql7);
								while(rs7.next())
										{
								id=rs7.getInt(1);
								s8=rs7.getString(9);
							   des=rs7.getString(10).toLowerCase();  
								  if ((des.contains(keyword)))
										{}else{
								
		  out.print("<input type=\"radio\" name=\"key\" ");
		 
		
		 %>
		 <p class="style13"><a href="U_SearchedMobileDetail.jsp?name=<%=s1%>&id=<%=id%>&type=<%="search"%>"><span class="style15 style7"><%="  "+s8%></span> </a></p>
     <%
		} 
		}
						  	}
							
						 catch(Exception e){}
				
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
