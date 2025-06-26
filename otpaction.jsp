<%
    String olotp=request.getParameter("otp");
    String notp=request.getParameter("uotp");
    int a=Integer.parseInt(olotp);
    int b=Integer.parseInt(notp);
    System.out.println(a+" "+b);
    String uname=request.getParameter("uname");
    if(a==b){
        session.setAttribute("uname", uname);
        System.out.println("username.."+uname);
         out.println("<script>"
                        +"alert('Otp Matched')"
                        +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("Uhome.jsp");
        rd.include(request, response);
    }
    else{
         out.println("<script>"
                        +"alert('Otp Not Matched')"
                        +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
        rd.include(request, response);
}
%>