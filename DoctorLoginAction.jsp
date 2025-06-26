<%-- 
    Document   : log
    Created on : Jul 10, 2017, 5:01:51 PM
    Author     : DLK 1
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name,pass;
name=request.getParameter("name");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/lab","root","root");
PreparedStatement ps=con.prepareStatement("select * From dreg where name='"+name+"' and pass='"+pass+"' ");
System.out.println(ps);
ResultSet rs=ps.executeQuery();
if(rs.next()){
    String mail=rs.getString("email");
System.out.println(ps);
session.setAttribute("name",name);
session.setAttribute("mail",mail);
out.println("<script>"
                            +"alert('Welcome Doctor')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/Dhome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/doctorlogin.jsp");
                    rd.include(request, response);
}
%>
