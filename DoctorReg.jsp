<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%
    try 
    {
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String speical=request.getParameter("special");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/lab","root","root");
    PreparedStatement ps=con.prepareStatement("insert into dreg(name,pass,email,special,phone,address)values('"+name+"','"+pass+"','"+email+"','"+speical+"','"+phone+"','"+address+"')");
    System.out.println(ps);
    ps.executeUpdate();
    System.out.println(ps);
   out.println("<script type=\"text/javascript\">"); 			
   out.println("alert(\"Successfully Register Doctor\")");
   out.println("</script>");
            RequestDispatcher rd=request.getRequestDispatcher("doctorlogin.jsp");
            rd.include(request, response);
        }
        catch(Exception ex){ out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Try angin\")");
        out.println("</script>");
            RequestDispatcher rd=request.getRequestDispatcher("index.html");
            rd.include(request, response);
        }

%>