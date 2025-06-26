<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String fname=request.getParameter("level");
String fno=request.getParameter("id");
String fdes=request.getParameter("pre");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");                
                    PreparedStatement query=con.prepareStatement("update report set pre='"+fdes+"',level='"+fname+"',status='Sent' where id='"+fno+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Update Prescription\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Response.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Response.jsp");
                    rd.include(request,response);
                }

%>