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
                    <li><a href="index.html" class="first">Home</a></li>
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
                    <h2 class="title"><a href="#">New Updates </a></h2>
                    <!--				<p class="meta">Wednesday, May 4, 2011 7:27 AM </p>-->
                    <div class="entry"><br><br>
                                <%
                                    try {
                                        Connection con = com.DB.DBConnection.getCon();
                                        PreparedStatement ps = con.prepareStatement("select subject from material_info where status='yes'");
                                        ResultSet rs = ps.executeQuery();
                                %>
                                <%             
                                                        rs.afterLast();
                                                    while (rs.previous()) {
                                %>
                                <li>
                                    <h3><a href="admin_login.jsp"> <%=rs.getString(1)%> </a></h3>
                                </li>
<%}
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                                </div>
                                </div>
                                </div>
                                <div id="sidebar">
                                    <ul>
                                        <li>
                                            <h2>Categories  </h2>
                                            <ul>
                                                <li><a href="admin_login.jsp">Admin </a></li>
                                                <li><a href="#">Professor </a></li>
                                                <li><a href="mentor_login.jsp">Mentor </a></li>
                                                <li><a href="student_login.jsp">Student </a></li>
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
