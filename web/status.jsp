<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<%
    try {
    String path = request.getParameter("filename");
    
    String state = "yes";
    
    Connection con = com.DB.DBConnection.getCon();
    CallableStatement mycall=con.prepareCall("{call status(?,?)}");
    mycall.setString(1, state);
    mycall.setString(2, path);
    int k = mycall.executeUpdate();
    
    if (k==1){
        %>
        <jsp:forward page="admin_view_material.jsp">
                            <jsp:param name="name" value="<%=request.getParameter("uname")%>" />
                        </jsp:forward>
        <%   
    }
    }catch(Exception e){
        e.printStackTrace();
    }
 %>