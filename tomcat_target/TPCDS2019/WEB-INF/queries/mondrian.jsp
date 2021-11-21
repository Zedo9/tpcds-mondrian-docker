<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %> <%@
taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jstl/core" %> <%-- uses a dataSource --%>
<%-- jp:mondrianQuery id="query01" dataSource="jdbc/MondrianFoodmart"
catalogUri="/WEB-INF/demo/FoodMart.xml" --%> <%-- uses mysql --%> <%--
jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver"
jdbcUrl="jdbc:mysql://localhost/foodmart"
catalogUri="/WEB-INF/queries/FoodMart.xml"--%> <%-- uses a role defined in
FoodMart.xml --%> <%-- jp:mondrianQuery role="California manager" id="query01"
jdbcDriver="sun.jdbc.odbc.JdbcOdbcDriver" jdbcUrl="jdbc:odbc:MondrianFoodMart"
catalogUri="/WEB-INF/queries/FoodMart.xml" --%>

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
  MATCHES '(?i)AU.*') ON ROWS FROM [Q22]
</jp:mondrianQuery>

<c:set var="title01" scope="session">Test Query uses Mondrian OLAP</c:set>
