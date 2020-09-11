<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<%
   
String result="no";
    String from = request.getParameter("frommail");
    String to = request.getParameter("tomail");
    String subject = request.getParameter("sub");
    String mesg = request.getParameter("msg");
     try {
                            Connection con = DBConnection.getCon();
                             CallableStatement mycall=con.prepareCall("{call studentsendquery(?,?,?,?,?)}");
                            mycall.setString(1, from);
                            mycall.setString(2, to);
                            mycall.setString(3, subject);
                            mycall.setString(4, mesg);
                            mycall.setString(5, result);
                            int k = mycall.executeUpdate();
                    %>
                    <h3>
                        <%                                if (k == 1) {
                                out.println("Query Submitted Successfully ");
                            } else {
                                out.println("Query Submition Failed");
                            }
                        %>
                    </h3>
                    <br>
                        <br>
                       To Send More Queries <a href="send_query.jsp">Click Here</a>
                            <%
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    out.println(e);
                                }
                            %>