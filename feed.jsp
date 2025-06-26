<%@page import="java.sql.*"%>
<%
                String id=request.getParameter("id");
                String pname=request.getParameter("pname");
                String ranking=request.getParameter("rank");
                int i;
                if(ranking.equals("* * * * *"))
                {
                 i=5;   
                }else if(ranking.equals("* * * *"))
                {
                    i=4;
                }else if(ranking.equals("* * *"))
                {
                    i=3;
                }else if(ranking.equals("* *"))
                {
                    i=2;
                }else
                {
                    i=1;
                }
                
               
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab","root","root");
                        PreparedStatement query=con.prepareStatement("update report set rating='"+i+"' where id='"+id+"'");
                        System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);                    
                    out.println("<script>"); 			
                    out.println("alert(\"FeedBack Successfully!\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Pres.jsp");
                    rd.include(request,response);		
		
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                %>