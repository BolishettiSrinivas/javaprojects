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
<title>PPI : Image Upload page</title>
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

<div  style="width:610px;">
  <!-- end of forever header -->
  <div id="tooplate_main">
      <div style="width:600px;">
   	    <div class="post_box">
            	<h2 align="center">Image Uploading  !!!  </h2>
				
				
				<form action="insertImage.jsp" method="post" enctype="multipart/form-data">
                <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Image Tag </b></div></td>
						<td  width="300" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="tag"></div></td>
					</tr>
					<tr>
 						<td  width="120" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b>Image Color </b></div></td>
						<td  width="72" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="color"></div></td>
					</tr>
					<tr>
  						<td  width="100" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Image Description </strong></div></td>
						<td  width="82" valign="middle" height="45"><div align="left" style="margin-left:20px;"><input type="text" name="annotation"></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Image Uses </strong></div></td>
						<td  width="82" align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;"><input type="text" name="uses"></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Policy</strong></div></td>
						<td  width="82" align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;">
							
								<input type="checkbox" name="policy" value="All">All |
								<input type="checkbox" name="policy" value="Content">Content |
								<input type="checkbox" name="policy" value="Metadata">Meta Data |
								<input type="checkbox" name="policy" value="Image">Image
						</td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Select Image </strong></div></td>
						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input type="file" name="pic"></div></td>
					</tr>
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/><input type="reset" name="Reset" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/></td></tr></div>
					
					
				</table>
				</form>
       	        <p>&nbsp;</p>
				
       	  </div>
		  
      </div>    	

    	<div class="cleaner"></div>
    </div> <!-- end of main -->
    <div id="tooplate_main_bottom"></div>

</div> <!-- wrapper -->


</body>
</html>