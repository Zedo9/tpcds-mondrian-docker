<%@page contentType="text/html"%>
<%--
// $Id: //open/mondrian-release/3.2/webapp/index.jsp#1 $
// This software is subject to the terms of the Eclipse Public License v1.0
// Agreement, available at the following URL:
// http://www.eclipse.org/legal/epl-v10.html.
// Copyright (C) 2001-2002 Kana Software, Inc.
// Copyright (C) 2002-2009 Julian Hyde and others
// All Rights Reserved.
// You must accept the terms of that agreement to use this software.
//
// jhyde, 6 August, 2001
--%>
<html>
<head>
<meta name="description" content="Mondrian is an OLAP server written in Java. It enables you to interactively
analyze very large datasets stored in SQL databases without writing SQL.">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Mondrian OLAP Server</title>
<link rel="stylesheet" href="stylesheet.css" type="text/css" />
</head>
<body>

<p>TPC-DS Benchmark Cubes:</p>
<ul>
  	<li><a href="testpage.jsp?query=C1">Cube 1 </a></li>
	
	<!-- mettre ici les liens vers vos cubes -->
	<!--
	<li><a href="testpage.jsp?query=Ci">Cube i </a></li>
	<li><a href="testpage.jsp?query=Cj">Cube j </a></li>
	-->
	
	<li><a href="testpage.jsp?query=C99">Cube 99 </a></li>
</ul>
		
<p>Other links:</p>
<ul>
<li><a href="http://mondrian.pentaho.org">Mondrian home page</a></li>
<li><a href="http://sourceforge.net/projects/mondrian">Mondrian project page</a></li>
<li><a href="http://jpivot.sourceforge.net/">JPivot home page</a></li>
<li><a href="http://sourceforge.net/projects/jpivot">JPivot project page</a></li>
</ul>
</body>
</html>
