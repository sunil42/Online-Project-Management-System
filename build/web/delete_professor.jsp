<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<%
    try {
    String prof_email = request.getParameter("pemail");
    
    Connection con = com.DB.DBConnection.getCon();
    CallableStatement mycall=con.prepareCall("{call delete_prof(?)}");
                                        
    
   mycall.setString(1, prof_email);
    
    int k = mycall.executeUpdate();
    
    if (k==1){
        %>
        <jsp:forward page="view_professor_list.jsp">
                            <jsp:param name="name" value="<%=request.getParameter("uname")%>" />
                        </jsp:forward>
        
        
        
        <%
        
    }
    }catch(Exception e){
        e.printStackTrace();
    }
 %>