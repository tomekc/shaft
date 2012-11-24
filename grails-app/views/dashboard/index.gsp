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

    <table class="table">
        <thead>
        <tr>
            <th>Project</th>
            <th>Last activity</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${projects}">
            <tr>
                <td><g:link controller="project" id="${it.id}"> ${it.name}</g:link></td>
                <td>${it.last_activity_at}</td>
            </tr>
        </g:each>



        </tbody>

    </table>




</body>
</html>