<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title></title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <script src="JS/validate.js"></script>
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
                    
                    <div class="entry">
                        <form action="student_login_process.jsp" method="post" id="lform" onSubmit="return loginval();" name="login">
                            <br></br>
                            <center>
                                <h2>Student Login</h2>
                                <br><br>
                                <table>
                                    <tr>
                                        <td align="right">User Name :</td><td> <input type="text" align="left" name="uname"/></td>
                                    </tr>
                                    <tr></tr> <tr></tr> <tr></tr>
                                    <tr>
                                        <td align="right">Password :&nbsp;&nbsp;</td><td> <input type="password" align="left" name="pwd"/></td>
                                    </tr>
                                    <tr></tr> <tr></tr> <tr></tr>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <button type="submit" form="lform" value='Register'>Login</button>
                                        </td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp  <input type="reset" align="left"value='Reset'  />
                                        </td>
                                    </tr>
                                    <tr></tr> <tr></tr> <tr></tr>
                                    <tr>
                                        <td>
                                            <div><p>New Student ? </p> <a href="student_register.jsp" class="links">Register Here</a></div>
                                        </td>
                                    </tr>
                                     <td>
                                                    <div><p>Forgot Password? </p> <a href="student_forgot.jsp" class="links">Click Here</a></div>
                                                    
                                                </td>
                                </table>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
            <div id="sidebar">
                <ul>
                    <li>
                        
                        
                      
                    </li>
                    <li>
                        <h2>Categories </h2>
                        <ul>
                            <li><a href="student_register.jsp">Register </a></li>
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
