<!DOCTYPE html>
<%@ page import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="initial-scale = 1.0">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
    <r:require modules="bootstrap"/>
    <g:layoutHead/>
    <r:layoutResources/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styles.css')}" type="text/css">
</head>

<body>
<div class="navbar navbar-inverse">
    <div class="navbar-inner">
        <a class="brand" href="#">Shaft</a>
        <ul class="nav">
            <li class="active"><a href="#">Projects</a></li>
            %{--<li><a href="#">Link</a></li>--}%
            %{--<li><a href="#">Link</a></li>--}%
        </ul>
    </div>
</div>


<div class="container-fluid">

    <g:layoutBody/>

    <hr>

    <footer>
        <p>&copy; Tomek 2011</p>
    </footer>
</div>

<r:layoutResources/>

</body>
</html>