<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %> <%@
taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jstl/core" %>
<jp:mondrianQuery
  id="query01"
  jdbcDriver="oracle.jdbc.driver.OracleDriver"
  jdbcUrl="jdbc:oracle:thin:@oracledb:1521:XE"
  jdbcUser="tpcds"
  jdbcPassword="tpcds"
  catalogUri="/WEB-INF/queries/TPCDS_99.xml"
>
  select [Measures].members ON COLUMNS, Crossjoin([Call Center].members,
  Crossjoin([Warehouse].Members, [Mode].Members)) ON ROWS from [Cube99]
</jp:mondrianQuery>
<c:set var="title01" scope="session">TPC-H Cube 99</c:set>
