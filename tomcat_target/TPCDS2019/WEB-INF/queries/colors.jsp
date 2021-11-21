<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %> <%@
taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery
  id="query01"
  jdbcDriver="oracle.jdbc.driver.OracleDriver"
  jdbcUrl="jdbc:oracle:thin:@oracledb:1521:TPCH"
  jdbcUser="system"
  jdbcPassword="manager"
  catalogUri="/WEB-INF/queries/TPCH.xml"
>
  SELECT {[Measures].[Count Account Balance positive]} ON COLUMNS,
  Filter({[Market Segment].MEMBERS}, [Market Segment].CurrentMember.Name NOT
  MATCHES '(?i)AU.*') ON ROWS FROM [Q22]</jp:mondrianQuery
>

<c:set var="title01" scope="session">Colors</c:set>
