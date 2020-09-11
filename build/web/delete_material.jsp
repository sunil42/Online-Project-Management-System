<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<%
    try {
    String filepath = request.getParameter("path");
    String state = "yes";
    Connection con = com.DB.DBConnection.getCon();
    String uname_ = request.getParameter("uname");
    Statement st = con.createStatement();    
    String query = "delete from material_info where file_path='"+filepath+"'";
    int k = st.executeUpdate(query);
    if (k==1){
        response.sendRedirect("admin_view_material.jsp?name="+uname_);    
    }
    }catch(Exception e){
        e.printStackTrace();
    }
 %>