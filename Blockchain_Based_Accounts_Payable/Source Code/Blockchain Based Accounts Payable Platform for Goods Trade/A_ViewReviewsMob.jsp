<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Reviews Mobile Posts</title>
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
.style4 {color: #000000}
.style5 {color: #FFFFFF}
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
          <li><a href="A_Login.jsp" class="active"><span>ADMIN</span></a></li>
          <li><a href="U_Login.jsp"><span>USER</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/header_img.jpg" alt="" width="568" height="355" />
      <h2>Goods trade, accounts payable, invoice processing,<br />
dispute management, blockchain, smart contract</h2>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
	  <h2><span class="style3">Admin</span> <span class="style3">Reviews on </span> <span class="style3">Mobile</span> <span class="style3">posts</span> </h2>
 
  <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"> SI NO </div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Post Image</div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Post Name</div></td>
			  <td  width="114" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Categorie</div></td>
			  <td  width="112" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Price</div></td>
              <td  width="82" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5">Comments</div></td>
          </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=1;
						try 
						{
						   	String query="select * from mposts"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(12);
								s3=rs.getString(3);
								
								
								
								
								
							
						
					%>
            <tr>
              <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style4 style5 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style5">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
              </div></td>
				  
              <td width="116" rowspan="1" bgcolor="#FF0000" ><div class="style22 style4 style5 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="mimage"%>" style="width:90px; height:90px;"  />
              </a> </div></td>
			  <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style4 style5 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style5">
                   
                      <span class="style8">
                      <a href="A_ViewAllMobPostsConti.jsp?name=<%=s1%>&id=<%=i%>&type=<%="reviews"%>">
                      <%out.println(s1);%>
                      </a></span>
                      <p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style4 style5 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style5">
                  
                      <%out.println(s2);%>
                   
                    <p>&nbsp; </p>
              </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style4 style5 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style5">
                    
                      <%out.println(s3+"/- Rs");%>
                  
                    <p>&nbsp; </p>
              </div></td>
				  
				   <td height="0"  valign="baseline" bgcolor="#FF0000"><p class="style22 style4 style5 style5">&nbsp;</p>
                  <div align="center" class="style22 style4 style5 style5">
                    
                      <span class="style8">
                      <a href="MReviews.jsp?name=<%=s1%>">Reviews</a>                      </span>
                      <p>&nbsp; </p>
              </div></td>
            </tr>
           
            
	
     
	 <%
					i=i+1;
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
			
					%>
	    </table>
      <div align="right"><a href="A_Main.jsp"> Back</a></div>
	  </div>
	 
      <div class="right">
        <h2>Home Menu</h2>
        <ul>
          <li><a href="A_Main.jsp">HOME</a></li>
          <li><a href="A_Login.jsp">LOGOUT</a></li>
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
