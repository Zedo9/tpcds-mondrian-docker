<%@ page language="java" %>
<%--
// $Id: //open/mondrian-release/3.2/webapp/pivot.jsp#1 $
// This software is subject to the terms of the Eclipse Public License v1.0
// Agreement, available at the following URL:
// http://www.eclipse.org/legal/epl-v10.html.
// (C) Copyright 2002-2005 Kana Software, Inc. and others.
// All Rights Reserved.
// You must accept the terms of that agreement to use this software.
//
// Julian Hyde, June 20, 2002
--%>
<%@ taglib uri="/WEB-INF/mdxtable.tld" prefix="mdx" %>
<html>
<head>
  <title>Mondrian Pivot Table</title>
</head>
<body>
<% 
long start = System.nanoTime(); 
%>

<mdx:query name="pivotQuery" resultCache="true">
SELECT {[Measures].[Count Account Balance positive]} ON COLUMNS,
Filter({[Market Segment].MEMBERS},
[Market Segment].CurrentMember.Name NOT MATCHES '(?i)AU.*') ON ROWS
FROM [Q22]</mdx:query>

<h1>Mondrian Pivot Table</h1>

<mdx:transform query="pivotQuery" xsltURI="/WEB-INF/mdxpivot.xsl" xsltCache="false"/>

<p>[<a href="morph_pivot.jsp">Morph</a>]</p>

<p>Query:<blockquote><pre>
<mdx:transform query="pivotQuery" xsltURI="/WEB-INF/mdxquery.xsl" xsltCache="false"/>
</pre></blockquote></p>
<% 
long end = System.nanoTime(); 
long duration = (end - start)/1000000;
out.println("");
out.println("Duration: "+ duration + "ms");
%>

</body>
</head>
