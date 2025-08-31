<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Add Mobile Posts</title>
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
.style6 {color: #FFFFFF; }
-->
</style>
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.categorie.value;
if(na3=="--Select--")

{
alert("Please Choose Categorie");
document.s.categorie.focus();
return false;
}
else
{

}
var na4=document.s.name.value;
if(na4=="")

{
alert("Please Enter Mobile name");
document.s.name.focus();
return false;
}

var na5=document.s.price.value;
if(na5=="")

{
alert("Please Enter Price");
document.s.price.focus();
return false;
}

var na6=document.s.size.value;
if(na6=="")

{
alert("Please Enter Description");
document.s.size.focus();
return false;
}
var na7=document.s.image.value;
if(na7=="")

{
alert("Please Enter Image");
document.s.image.focus();
return false;
}
var na8=document.s.subcategorie.value;
if(na8=="--Select--")

{
alert("Please Enter sub-categorie");
document.s.subcategorie.focus();
return false;
}
var na9=document.s.color.value;
if(na9=="")

{
alert("Please Enter color");
document.s.color.focus();
return false;
}
var na10=document.s.os.value;
if(na10=="")

{
alert("Please Enter OS");
document.s.os.focus();
return false;
}
var na11=document.s.im.value;
if(na11=="")

{
alert("Please Enter Internal Memory");
document.s.im.focus();
return false;
}
var na12=document.s.em.value;
if(na12=="")

{
alert("Please Enter External Memory");
document.s.em.focus();
return false;
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
	  <h2><span class="style3">Admin</span> <span class="style3">Add</span> <span class="style3">Sub-Category</span> <span class="style3">Status</span> </h2>
                           <p>
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
				<%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
			 ArrayList a2=new ArrayList();
      		
      		 
           
           String query="select categorie FROM categories where categorie='electronics' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("categorie"));
		
	   }
	   
	   
	   
		
		
%>

<form name="s" method="post" enctype="multipart/form-data" action="A_AddMobileProdConf.jsp" onSubmit="return valid()"  ons target="_top">
 
  <table width="405" border="0" align="center">
    <tr>
      <td width="165" height="33" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8">Select the Categorie </span></div></td>
      <td width="230"><label>
        <select id="s1" name="categorie">
         <option>--Select--</option>
        <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
        </select>
      </label></td>
    </tr>
	<%
	 String query1="select subcategorie FROM subcategories where subcategorie='mobile' "; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(query1);
          
	   while ( rs1.next() )
	   {
			a2.add(rs1.getString("subcategorie"));
		
	   }
	%>
	<tr>
      <td width="165" height="33" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8">Select the Sub-Categorie </span></div></td>
      <td width="230"><label>
        <select id="s1" name="subcategorie">
         <option>--Select--</option>
        <% for(int i=0;i<a2.size();i++)
        	  {
        	  %>
           <option><%= a2.get(i)%></option>
           
           <%}%>
        </select>
      </label></td>
    </tr>
	 
    <tr>
      <td height="36" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8"> Mobile Name </span> </div></td>
      <td><label>
        <input type="text" id="t1" name="name">
      </label></td>
    </tr>
	
	 <tr>
      <td height="35" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8">Price </span></div></td>
      <td><label>
        <input type="text" id="t3" name="price">
      </label></td>
    </tr>
    <tr>
      <td height="51" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8"> Desplay Size </span></div></td>
      <td><label>
        <input type="text" id="t3" name="size">
      </label></td>
    </tr>
   <tr>
      <td height="51" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8"> Color </span></div></td>
      <td><label>
        <input type="text" id="t3" name="color">
      </label></td>
    </tr>
	<tr>
      <td height="51" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8"> OS </span></div></td>
      <td><label>
        <input type="text" id="t3" name="os">
      </label></td>
    </tr>
	<tr>
      <td height="51" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8"> Internal Memory </span></div></td>
      <td><label>
        <input type="text" id="t3" name="im">
      </label></td>
    </tr>
   <tr>
      <td height="51" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8"> External Memory </span></div></td>
      <td><label>
        <input type="text" id="t3" name="em">
      </label></td>
    </tr>
   <tr>
      <td height="51" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8"> Mobile Processer </span></div></td>
      <td><label>
        <input type="text" id="t3" name="processor">
      </label></td>
    </tr>
	<tr>
      <td height="51" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8"> Description </span></div></td>
      <td><label>
        <textarea name="desc" id="t2"></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="38" bordercolor="#FF0000" bgcolor="#FF0000"><div align="center" class="style6"><span class="style8">  Image </span></div></td>
      <td><input type="file" id="userImage" name="image" style="width:100%"  ></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="26">
        <div align="right">
          <input type="submit" name="Submit" value="Add Post">
        </div>      </td>
      <td></td>
    </tr>
  </table>
</form>
<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		  </p>
<p align="right"> <a href="A_Main.jsp">Back</a> </p>
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
