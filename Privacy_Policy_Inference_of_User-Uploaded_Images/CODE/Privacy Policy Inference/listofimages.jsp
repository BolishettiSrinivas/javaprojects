<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>PPI: Admin menu page</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/swfobject.js"></script>
	<script type="text/javascript">
        var flashvars = {};
        flashvars.xml_file = "photo_list.xml";
        var params = {};
        params.wmode = "transparent";
        var attributes = {};
        attributes.id = "slider";
        swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "440", "220", "9.0.0", false, flashvars, params, attributes);
    </script></head>
<body>

<div id="#" width="650" style="margin-right:5px">
    	
        <div id="#" width="650" style="margin-left:2px; margin-right:2px;">  
          	<table border="3" width="600" style="margin-left:2px; margin-right:2px;"><caption style="height:50px; background-color:#999999; font-size:18px; font-family:'Times New Roman', Times, serif;" valign="bottom">
          	List Of Images 
          	</caption> <tr>
				<%
					try{      
						String s1=null,s2=null,s3=null,s4=null;
						Statement stmt=connection.createStatement();
						String strQuery = "select * from images order by count DESC";
						ResultSet rs = stmt.executeQuery(strQuery);
						int row=0;
						while(rs.next()){
						row++;
						int i=rs.getInt(1);
						s1=rs.getString(2);
						s2=rs.getString(3);
						s3=rs.getString(4);
						String pol = rs.getString(6);
						String image=rs.getString(9);
						String imguser=rs.getString(11);
						if(row >2){
						row=1;
						%>
						</tr>
						<tr>
						<%}
				%>
				<td>
					<div style="margin:10px 13px 10px 13px;" >
                		<a class="lightbox" id="img1" href="#" title="<%= "Tag :"+s1+"\n Color :"+s2+"\n Annotation :"+s3 %>">
							<input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:270px; height:120px;" class="image_wrapper"  />
	               			
				   		</a>
						<p>&nbsp;Image Added By  :<span style="color:#006633;"><%=imguser%></span></p>
						<p>&nbsp;Image Policy  :<span style="color:#006633;"><%=pol%></span></p>
                	</div>
                </td>
               	<%
							
						
    				}
    				rs.close();
    				connection.close();
 					stmt.close();
  					}catch(Exception e)
					{
						e.getMessage();
					}
					%>
				
							
			
			
       
	  </tr></table>
	  <!--<div > <strong height="57" colspan="2" id="learn_more" align="center" bgcolor="#000000" style="color:#FFFFFF;"><a href="listusers.jsp" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;">BACK </a></strong></div> -->
	  </div>
	  
             
	  <div class="cleaner"></div>
    </div> <!-- wrapper -->


</body>
</html>