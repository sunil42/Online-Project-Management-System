<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title></title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <script src="JS/mentor_validate.js"></script>
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
                    <li class="current_page_item"><a href="#">Notification</a></li>
                    <li><a href="aboutus.html">About Us</a></li>
                    <li><a href="contact.html">Contact</a></li>
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
                                <form action="mentor_register_process.jsp" method="post" id="mreg" onSubmit="return regvalidate();" name="registration">
                            <center>
                                <h2>Mentor Registration</h2>
                                <br><br><br>
                                <table>
                                    <tr>
                                        <td align="right">User Name:</td><td> <input type="text" align="left" name="uname"/></td>
                                    </tr>
                                    <tr></tr> <tr></tr> <tr></tr>
                                    
                                    <tr>
                                        <td align="right">E-mail :</td><td> <input type="text" align="left" name="email"/></td>
                                    </tr>
                                    <tr></tr> <tr></tr> <tr></tr>
                                    <tr>
                                        <td align="right">Password : </td><td> <input type="password" align="left" name="pwd"/></td>
                                    </tr>
                                    <tr></tr> <tr></tr> <tr></tr>
                                    <tr>
                                        <td align="right">Department : </td>
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
                                        <td align="right">Designation : </td>
                                        <td>
                                            <select name="desi">
                                                <option>Choose Designation</option>
                                                <option>Professor</option>
                                                <option>Asst.Professor</option>
                                                <option>Asso.Professor</option>
                                                <option>Mentor</option>
                                                
                                            </select>
                                        </td>
                                    </tr>
                                    <tr></tr> <tr></tr> <tr></tr>
                                    
                                    
                                    <tr>
                                        <td align="right">Contact No : </td><td> <input type="text" align="left" name="cno"/></td>
                                    </tr>
                                    <tr></tr> <tr></tr> <tr></tr>
                                   <tr>
                                        <td>
                                             <input type="submit" form="mreg" align="right" value='Submit' />
                                        </td>
                                        <td>
                                            <input type="reset" align="left"value='Reset'  />
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
