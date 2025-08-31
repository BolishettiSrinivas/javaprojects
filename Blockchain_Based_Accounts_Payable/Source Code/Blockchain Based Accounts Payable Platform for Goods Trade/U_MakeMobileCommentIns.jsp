<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<%@ include file="connect.jsp" %>
 <%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%> 
    
<body>
<%
try {
    
            SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			
			
String user=(String)application.getAttribute("uname");
String mname=request.getParameter("iname");
int id=Integer.parseInt(request.getParameter("id"));
String comment=request.getParameter("com");
PreparedStatement pst=connection.prepareStatement("insert into mcomment(mname,comment,c_name,dt,p_id) values(?,?,?,?,?)");
            
			pst.setString(1,mname);
            pst.setString(2,comment);
            pst.setString(3,user);
			pst.setString(4,dt);
            pst.setInt(5,id);

			
			 int x=pst.executeUpdate();
			
		
					if(x>0)
			{
					
					 String sql="select * from mposts where m_name='"+mname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		if(rs.next())
					   		{
								int rank1=rs.getInt(14);
					
					 int rank=rank1+1;
					
					
					 Statement st32 = connection.createStatement();
					 String query32 ="update mposts set rank="+rank+" where m_name='"+mname+"' ";
					 st32.executeUpdate (query32);
                  }
                          %> <b> Comment Upload Successfull.						</b>
		                        <p align="center"><a href="U_MakeMobileComment.jsp?id=<%=id%>" class="style47">Back</a></p>
                          <%
			
								
								
			}
			else
			{
						%> 
  </h2>
  <div align="center"><br />
						    <b>Comment Upload Not Successfull, Please try agian!!.						</b>
          </div>
        </div>
						  <p align="center"><a href="U_MakeMobileComment.jsp?id=<%=id%>" class="style47">Back</a></p>
						<div align="center">
						  <%
			}
			
		} 
		catch (Exception e) {
		e.printStackTrace();
		}	
			
			

%>
</body>
</html>
