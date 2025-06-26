<%-- 
    Document   : log
    Created on : Jul 10, 2017, 5:01:51 PM
    Author     : DLK 1
--%>
<%@page import="mail.mail"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name,pass;
name=request.getParameter("name");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/lab","root","root");
PreparedStatement ps=con.prepareStatement("select * From ureg where name='"+name+"' and pass='"+pass+"' ");
System.out.println(ps);
ResultSet rs=ps.executeQuery();
if(rs.next()){
    String mail=rs.getString("email");
System.out.println(ps);
session.setAttribute("name",name);
session.setAttribute("mail",mail);
Random r = new Random(); 
String xyz = Integer.toString(r.nextInt(10000));
mail m=new mail(); 
    String subject="One Time Password";
    String message="OTP :  "+xyz;
    m.sendFromGMail("1cp.javateam2020", "1cpjava2020",mail, subject,message);
   session.setAttribute("otp",xyz);
   session.setAttribute("name",name); System.out.println("Otp.."+xyz);
out.println("<script>"
                            +"alert('Go To The Second Verification Page)"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/otp.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/userlogin.jsp");
                    rd.include(request, response);
}
%>
