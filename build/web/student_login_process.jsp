<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title></title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="logo">
        </div>
        <hr />
        <div id="header">
            <div id="menu">
                <ul>
                     <li><a href="student_home.jsp" class="first">Home</a></li>
                    <li class="current_page_item"><a href="student_upload_material.jsp">Upload Material</a></li>
                    <li><a href="student_view_material.jsp">View Material</a></li>
                    <li><a href="view_mentor_list.jsp">Discussion</a></li>
                </ul>
            </div>
            <div id="search">
                <form method="get" action="">
                    <fieldset>
                        <input type="text" name="s" id="search-text" size="15" />
                        <input type="submit" id="search-submit" value="GO" />
                    </fieldset>
                </form>
            </div>
        </div>
        <div id="page">
            <div id="content">
                <div class="post">
                    <h2 class="title"><a href="#">ONLINE PROJECT MANAGEMENT SYSTEM</a></h2>
                    <!--				<p class="meta">Wednesday, May 4, 2011 7:27 AM </p>-->
                    <%
                        Connection con = com.DB.DBConnection.getCon();
                        String username = request.getParameter("uname");
                        String password = request.getParameter("pwd");
                        
                        System.out.println("the username is " +username);
                        System.out.println("the password is " +password);
                        try {
                            Statement st = con.createStatement();
                            String query = "select user_name,pwd from student where user_name='" + username + "' and pwd='" + password + "' ";
                            ResultSet rs = st.executeQuery(query);
                            if (!rs.next()) {
                    %>
                    User Details Given for Username : <%=request.getParameter("uname")%> is Not Registered/Valid
                    <br>
                        Please Try Again
                        <%
                        } else {
                        %>
                        <jsp:forward page="student_home.jsp">
                            <jsp:param name="name" value="<%=request.getParameter("uname")%>" />
                        </jsp:forward>
                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <div style="clear: both;">&nbsp;</div>
                </div>
                <div id="footer">
                     
                </div>
                </body>
                </html>