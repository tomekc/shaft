<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 18.11.2012
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="bootstrap"/>
  <title></title>
</head>
<body>

	<h2>Projects</h2>
    ${name}
    ${grailsApplication.config.pivotal.token}
	
    <pre>
    ${xml}
    </pre>


</body>
</html>