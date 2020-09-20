<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.io.FileUtils" %>
<%
String path = request.getParameter("filepath"); 
%>
<html>
<body>
<center>
<object data="<%= path%>" type="application/pdf" width="100%" height="100%">
</object>
</center>
</body>
</html>
