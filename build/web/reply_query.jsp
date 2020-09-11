
<%
    String semail = request.getParameter("email");
%>
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
        <hr/>
        <div id="header">
            <div id="menu">
                <ul>
                    <li><a href="index.html" class="first">Home</a></li>
                    <li class="current_page_item"><a href="upload_material.jsp">Upload Material</a></li>
                    <li><a href="view_material.jsp">View Material</a></li>
                    <li><a href="#">Discussion</a></li>
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
                                <form action="reply_query_process.jsp" method="post" id="reform">
                                    <center>
                                        <h2>Reply to Query</h2>
                                        <br><br><br>
                                                    <table>
                                                        <tr>
                                                            <td align="left">Mail To : </td>
                                                        </tr> 
                                                        <tr>
                                                            <td> <input type="text" align="left" value="<%= semail%>" name="tomail"/></td>
                                                        </tr>
                                                        <tr></tr> <tr></tr> <tr></tr>
                                                        <tr>
                                                            <td align="left">From : </td>
                                                        </tr> 
                                                        <tr>
                                                            <td> <input type="text" align="left" placeholder="Type Your Mail" name="frommail"/></td>
                                                        </tr>
                                                        <tr></tr> <tr></tr> <tr></tr>
                                                        <tr>
                                                            <td align="left">Subject : </td>
                                                        </tr>
                                                        <tr>
                                                            <td> 
                                                                <input type="text" align="left" placeholder="Subject Name" name="sub"/>
                                                            </td>
                                                        </tr>
                                                        <tr></tr> <tr></tr> <tr></tr>
                                                        <tr>
                                                            <td align="left">Message: </td>
                                                        </tr> 
                                                        <tr>
                                                            <td> <textarea rows="8" cols="50" align="left" name="msg"> </textarea></td>
                                                        </tr>
                                                        <tr></tr> <tr></tr> <tr></tr>
                                                        <tr>
                                                            <td>
                                                                <input type="submit" value="Reply" form="reform" style="height: 30px;width: 90px;"/>
                                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                <input type="Reset" value="Reset" style="height: 30px;width: 90px;"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    </center>
                                                    </form>
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
                                                                    <li><a href="admin_login.jsp">Admin </a></li>
                                                                    <li><a href="professor_login.jsp">Professor </a></li>
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
