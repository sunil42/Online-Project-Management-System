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
                    <li><a href="index.html" class="first">Home</a></li>
                    <li class="current_page_item"><a href="#">Notification</a></li>
                    <li><a href="#">Discussion</a></li>
                    <li><a href="#">Contact</a></li>
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
                        String uname = request.getParameter("uname");
                        String email = request.getParameter("email");
                        String password = request.getParameter("pwd");
                        String dept_name = request.getParameter("dept");
                        String design = request.getParameter("desi");
                        String contact = request.getParameter("cno");
                        try {
                            Connection con = DBConnection.getCon();
                            CallableStatement mycall=con.prepareCall("{call profReg(?,?,?,?,?,?)}");
                            mycall.setString(1, uname);
                            mycall.setString(2, email);
                            mycall.setString(3, password);
                            mycall.setString(4, dept_name);
                            mycall.setString(5, design);
                            mycall.setString(6, contact);
                            int k = mycall.executeUpdate();
                    %>
                    <h3>
                        <%                                if (k == 1) {
                                out.println("Professor Registration Successfully Completed");
                            } else {
                                out.println("Professor registration failed");
                            }
                        %>
                    </h3>
                    <br>
                        <br>
                            To Login <a href="professor_login.jsp">Click Here</a>
                            <%
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