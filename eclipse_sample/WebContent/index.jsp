<%@ page contentType="text/html;charset=UTF8" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%
    System.out.println("----------------------------------");
    System.out.println("こんにちは世界");
    System.out.println(new java.text.SimpleDateFormat("z").format(new java.util.Date()));
    System.out.println(java.util.TimeZone.getDefault().getID());
    System.out.println(new java.util.Date());

    String url = "http://ip.kumauta.com/";
    String resp = "";

    URL urlObj;
    HttpURLConnection urlCon;
    BufferedReader urlIn;
    String str;

    try {
      urlObj = new URL(url);

      urlCon = (HttpURLConnection)urlObj.openConnection();
      urlCon.setRequestMethod("GET");
      urlIn = new BufferedReader(new InputStreamReader(urlCon.getInputStream()));

      while ((str = urlIn.readLine()) != null) {
        //System.out.println(str);
        resp = resp + str;
      }

      urlIn.close();
      urlCon.disconnect();

    } catch (Exception ex) {
      ex.printStackTrace();
    }
%>
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
  <form>
    <textarea name="example" cols="50" rows="10"><%= resp %></textarea>
  </form>
  <br>
</body>
</html>
