<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<%
    try {
    String mentor_email = request.getParameter("pemail");
    
     
   Connection con = com.DB.DBConnection.getCon();
    CallableStatement mycall=con.prepareCall("{call delete_mentor(?)}");
    mycall.setString(1, mentor_email);
    int k = mycall.executeUpdate();
    if (k==1){
        %>
        <jsp:forward page="view_mentor_list1.jsp">
                            <jsp:param name="name" value="<%=request.getParameter("uname")%>" />
                        </jsp:forward>
        <%
        
    }
    }catch(Exception e){
        e.printStackTrace();
    }
 %>