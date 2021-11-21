<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib uri="http://www.tonbeller.com/wcf" prefix="wcf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>

<head>
  <title>Parameters 2 - receiving</title>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" type="text/css" href="../jpivot/table/mdxtable.css">
  <link rel="stylesheet" type="text/css" href="../jpivot/navi/mdxnavi.css">
  <link rel="stylesheet" type="text/css" href="../wcf/form/xform.css">
</head>


<body>

<h1>Parameters 2 - receiving</h1>

<!-- this sets the "MdxParameter" parameter of paramquery01 -->
<jp:setParam query="${paramquery01}" httpParam="param" mdxParam="ProductMember">
<jp:mondrianQuery id="paramquery01" jdbcDriver="oracle.jdbc.driver.OracleDriver" jdbcUrl="jdbc:oracle:thin:@oracledb:1521:TPCH" jdbcUser="system" jdbcPassword="manager" catalogUri=/WEB-INF/queries/TPCH.xml">
select AddCalculatedMembers([Measures].Members) ON COLUMNS,
  Crossjoin([Return Flag].Members, [Line Status].Members) ON ROWS
from [Q1]
where {([Time.All Times].[1992] : [Time.All Times].[1997]), ([Time.All Times].[1998].[1] : [Time.All Times].[1998].[3])}
</jp:mondrianQuery>
</jp:setParam>

<form action="param4.jsp" method="post" id="form01">

<!-- display the current Parameter value -->
Show <b>Children</b> of Parameter Member <c:out value="${paramquery01.extensions.setParameter.displayValues['ProductMember']}"/>
<p>
<jp:table id="paramtable01" query="${paramquery01}" visible="true"/>
<wcf:render ref="paramtable01" xslUri="/WEB-INF/jpivot/table/mdxtable.xsl" xslCache="true"/>

</form>
<p>
<a href="../index.jsp">Back to index</a>
</body>

</html>
