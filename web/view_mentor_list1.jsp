<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
                    <li><a href="admin_home.jsp" class="first">Home</a></li>
                    <li><a href="view_professor_list.jsp">Professors</a></li>
                    <li><a href="view_mentor_list1.jsp">Mentors</a></li>
                    <li><a href="view_student_list.jsp">Students</a></li>
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
                    <div class="entry"><br><br>
                                <%
                                    try {
                                         Connection con = com.DB.DBConnection.getCon();
                                        CallableStatement mycall=con.prepareCall("{call view_mentor_list()}");
                                        ResultSet rs= mycall.executeQuery();
                                %>
                                <center>
                                    <h2>List of Mentors</h2>
                                    <br><br><br>
                                                <table border="1">
                                                    <tr>
                                                        <td><h4>Name</h4></td>
                                                        <td><h4>Email</h4></td>
                                                        <td><h4>Department</h4></td>
                                                        <td><h4>Designation</h4></td>
                                                        <td><h4>Contact No</h4></td>
                                                        <td><h4>Delete</h4></td>
                                                    </tr>
                                                    <%                while (rs.next()) {
                                                    %>
                                                    <tr>
                                                        <td><%=rs.getString(1)%></td>
                                                        <td><%=rs.getString(2)%></td>
                                                        <td><%=rs.getString(3)%></td>
                                                        <td><%=rs.getString(4)%></td>
                                                        <td><%=rs.getString(5)%></td>
                                                        <td> <a href=<%= "\"delete_mentor.jsp?pemail=" + rs.getString(2) + "\""%> > Delete</a></td>
                                                    </tr>
                                                    <%}
                                                        } catch (Exception e) {
                                                            e.printStackTrace();
                                                        }
                                                    %>
                                                </table>
                                                </center>
                                                </div>
                                                </div>
                                                </div>
                                                <div id="sidebar">
                                                    <ul>
                                                        <li>
                                                       
                                                        </li>
                                                        <li>
                                                            <h2>Categories  </h2>
                                                            <ul>
                                                                <li><a href="admin_home.jsp">Admin </a></li>
                                                                <li><a href="professor_login.jsp">Professor </a></li>
                                                                <li><a href="mentor_login.jsp">Mentor </a></li>
                                                                <li><a href="admin_login.jsp">Logout </a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div style="clear: both;">&nbsp;</div>
                                                </div>
                                                <div id="footer">
                                                </div>
                                                </body>
                                                </html>
