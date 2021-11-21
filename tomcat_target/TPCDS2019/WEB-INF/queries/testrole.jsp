<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<%-- uses a dataSource --%>
<%-- jp:mondrianQuery id="query01" dataSource="jdbc/MondrianFoodmart" catalogUri="/WEB-INF/demo/FoodMart.xml" --%>

<%-- uses mysql --%>
<%-- jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" jdbcUrl="jdbc:mysql://localhost/foodmart" catalogUri="/WEB-INF/queries/FoodMart.xml"--%>

<%-- uses a role defined in FoodMart.xml --%>
<%-- jp:mondrianQuery role="California manager" id="query01" jdbcDriver="sun.jdbc.odbc.JdbcOdbcDriver" jdbcUrl="jdbc:odbc:MondrianFoodMart" catalogUri="/WEB-INF/queries/FoodMart.xml" --%>

</jp:mondrianQuery>


<jp:mondrianQuery id="query01" jdbcDriver="oracle.jdbc.driver.OracleDriver" jdbcUrl="jdbc:oracle:thin:@oracledb:1521:TPCH" jdbcUser="system" jdbcPassword="manager" catalogUri="/WEB-INF/queries/TPCH.xml  role="California manager"">
select {[Part Brand].[Brand#23  ]} ON COLUMNS,
  {[Part Container].[MED BOX   ]} ON ROWS
from [Q17]
</jp:mondrianQuery>


<c:set var="title01" scope="session">Test query uses Mondrian OLAP, using role 'California manager'</c:set>
