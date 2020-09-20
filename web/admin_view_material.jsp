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
                    <!--                    <li class="current_page_item"><a href="upload_material.jsp">Upload Material</a></li>-->
                    <li><a href="admin_view_material.jsp">Material</a></li>
                    <li><a href="#">Queries</a></li>
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
                                        CallableStatement mycall=con.prepareCall("{call ADMIN_VIEW_MATERIAL()}");
                                        ResultSet rs= mycall.executeQuery();
                                %>
                                <center>
                                    <h2>List of Material</h2>
                                    <br><br><br>
                                                <table border="1">
                                                    <tr>
                                                        <td><h4>Dept. Name</h4></td>
                                                        <td><h4>Year</h4></td>
                                                        <td><h4>Semester</h4></td>
                                                        <td><h4>Subject Name</h4></td>
                                                        <td><h4>File Name</h4></td>
                                                        <td><h4>Status</h4></td>
                                                        <td><h4>Download</h4></td>
                                                        <td><h4>Activate</h4></td>
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
                                                        <td><%=rs.getString(6)%></td>
                                                        <td> <a href=<%= "\"download.jsp?path=" + rs.getString(7) + "\""%> > Download</a></td>
                                                        <td> <a href=<%= "\"status.jsp?filename=" + rs.getString(5) + "\""%> > Accept</a></td>
                                                        <td> <a href=<%= "\"delete_material.jsp?path=" + rs.getString(7) + "\""%> > Reject</a></td>
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
                                                            <li>
                                                                
                                                                <p><marquee >Latest Documents on Java</marquee>
                                                                    <marquee >Latest Documents on Dotnet</marquee></p>
                                                            </li>
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
