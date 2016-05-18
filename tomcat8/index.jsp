<%@ page contentType="text/html;charset=UTF8" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<html>
<body>
  <form>
    <textarea name="example" cols="50" rows="10">
      <%
        Properties p = System.getProperties();
        for (Object key : p.keySet()) {
          String val = System.getProperty((String) key);
      %>
      <%= key + " = " + val %>
      <%
        }
      %>
    </textarea>
  </form>
  <br>
</body>
</html>
