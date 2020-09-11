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
        <hr/>
        <div id="header">
            <div id="menu">
                <ul>
                    <li><a href="professor_home.jsp" class="first">Home</a></li>
                    <li><a href="professor_upload_material.jsp">Upload Material</a></li>
                    <li><a href="professor_view_material.jsp">View Material</a></li>
                    <li><a href="professor_queries.jsp">Discussion</a></li>
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
                    <h2 class="title"><a href="#">Welcome to Professor </a></h2>
                    <!--				<p class="meta">Wednesday, May 4, 2011 7:27 AM </p>-->
                    <div class="entry"><br><br>
                                <form action="UploadServlet" method="post" enctype="multipart/form-data">
                                    <center>
                                        <h2>Upload Material</h2>
                                        <br><br><br>
                                                    <table>
                                                        <tr>
                                                            <td align="right">Department Name : </td>
                                                            <td>
                                                                <select name="dept">
                                                                    <option>--Choose Dept----</option>
                                                                    <option>CSE</option>
                                                                    <option>MECH</option>
                                                                    <option>ECE</option>
                                                                    <option>EEE</option>
                                                                    <option>BME</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr></tr> <tr></tr> <tr></tr>
                                                        <tr>
                                                            <td align="right">Year : </td>
                                                            <td>
                                                                <select name="year">
                                                                    <option>--Choose Year----</option>
                                                                    <option>1st Year</option>
                                                                    <option>2nd Year</option>
                                                                    <option>3rd Year</option>
                                                                    <option>4th Year</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr></tr> <tr></tr> <tr></tr>
                                                        <tr>
                                                            <td align="right">Semester : </td>
                                                            <td>
                                                                <select name="sem">
                                                                    <option>--Choose Semester----</option>
                                                                    <option>1st Semester</option>
                                                                    <option>2nd Semester</option>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr></tr> <tr></tr> <tr></tr>
                                                        <tr>
                                                            <td align="right">Subject Name : </td><td> <input type="text" align="left" name="sname"/></td>
                                                        </tr>
                                                        <tr></tr> <tr></tr> <tr></tr>
                                                        <tr style="height: 40px;"><td>Choose File :</td><td> <input name="efile" type="file" id="file"/>    </td></tr>
                                                        <tr style="height: 20px;width: 150px; "><td></td><td><input type="submit" value="Upload" style="height: 30px;width: 90px;"/></td>
                                                            <td></td><td><input type="submit" value="Reset" style="height: 30px;width: 90px;"/></td></tr>
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
                                                <li><a href="mentor_login.jsp">Mentor </a></li>
                                                <li><a href="student_login.jsp">Student </a></li>
                                                <li><a href="professor_home.jsp">Logout </a></li>
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
