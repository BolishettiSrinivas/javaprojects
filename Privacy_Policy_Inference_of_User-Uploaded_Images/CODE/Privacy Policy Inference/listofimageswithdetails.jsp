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
<title>PPI : List of Images With Details</title>
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
		
		
		<div id="gallery">  
          	<table border="3" width="600" style="margin-left:2px; margin-right:2px;"><caption style="height:50px; background-color:#999999; font-size:18px; font-family:'Times New Roman', Times, serif;" valign="bottom">
          	List Of Images With Content
          	</caption> 
				<%
					try{      
						String s1=null,s2=null,s3=null,s4=null;
						Statement stmt=connection.createStatement();
						String strQuery = "select * from images order by count DESC";
						ResultSet rs = stmt.executeQuery(strQuery);
						//int row=0;
						while(rs.next()){
						//row++;
						int i=rs.getInt(1);
						s1=rs.getString(2);
						s2=rs.getString(3);
						s3=rs.getString(4);
						String pol = rs.getString(6);
						int rank = rs.getInt(8);
						String image=rs.getString(10);
						String imguser=rs.getString(11);
						
				%>
				<tr>
				<td>
					<div class="gallery_box" >
                		<a class="lightbox" id="img1" href="#" title="<%= "Tag :"+s1+"\n Color :"+s2+"\n Annotation :"+s3 %>">
							<input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:270px; height:120px;" class="image_wrapper"  />
	               			
				   		</a>
						<p>
							<%
							if(rank>0 && rank<= 3){%>
								Rank:[<%= rank%>]&nbsp;Rating :<img src="images/1.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>3 && rank<= 6){%>
								Rank:[<%= rank%>]&nbsp;Rating :<img src="images/2.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>6 && rank<= 12){%>
								Rank:[<%= rank%>]&nbsp;Rating :<img src="images/3.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>12 && rank<= 24){%>
								Rank:[<%= rank%>]&nbsp;Rating :<img src="images/4.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>24){%>
								Rank:[<%= rank %>]&nbsp;Rating :<img src="images/5.png" style="width:120px; height:20px;" />
						
							<%
							}else{
							%>
								Rank:[<%= rank %>]&nbsp;Rating :<img src="images/0.png" style="width:120px; height:20px;" />
							<%
							}
							%>
						</p>
						<p>&nbsp;Image Added By  :<span style="color:#006633;"><%=imguser%></span></p>
						<p>&nbsp;Image Policy  :<span style="color:#006633;"><%=pol%></span></p>
                		<!--<p><b><span class="orange"> ,</span><span class="green"> ,</span></b>  </p>-->
                </div>
				</td>
				
				<td  width="600">
                		<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Tag :</span><%=s1%></p>
						<p style="font-family:'Times New Roman', Times, serif;"><span style="color:#006666"> Color :</span><%=s2%></p>
						<p style="font-family:'Times New Roman', Times, serif;"> <span style="color:#006666">Content: </span><%=s3%> </p>
						
                	
				</td>
				</tr>
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
					
							
			
			
       
	  </table>
	  <!--<div > <strong height="57" colspan="2" id="learn_more" align="center" bgcolor="#000000" style="color:#FFFFFF;"><a href="listusers.jsp" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;">BACK </a></strong></div> -->
	  </div>
	  
             
	  <div class="cleaner"></div>
    </div> <!-- wrapper -->


</body>
</html>