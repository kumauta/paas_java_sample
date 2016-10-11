<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8" import="java.util.*"%>

<h2>header</h2>
<form>
  <textarea name="header" cols="100" rows="20">
<%
 Enumeration objEnm = request.getHeaderNames();
 while (objEnm.hasMoreElements()) {
  String strKey = (String) (objEnm.nextElement());
  out.println(strKey + "=" + request.getHeader(strKey));
 }
%>
  </textarea>

<h2>remoteAddr</h2>
<form>
  <textarea name="header" cols="100" rows="1">
<%
  out.println(request.getRemoteAddr());
%>
  </textarea>
</form>
