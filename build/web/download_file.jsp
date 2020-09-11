<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<%
    String filename = request.getParameter("file_name");
    
    Connection con = com.DB.DBConnection.getCon();
    
    String query = "select file_path from material_info where file_name = 'filename'";
    
    Statement st = con.createStatement();
    
    ResultSet rs = st.executeQuery(query);
    
    %>