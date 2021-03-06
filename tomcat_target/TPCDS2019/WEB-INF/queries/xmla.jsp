<%@ page session="true" pageEncoding="UTF-8" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<!-- 
    * Change uri attribute to your deployment of this webapp.
    * The dataSource attribute is necessary for Mondrian's XMLA.
-->
<jp:xmlaQuery id="query01"
    uri="http://localhost:8080/mondrian/xmla"
    dataSource="Provider=Mondrian;DataSource=OracleTest;"
    catalog="TPCH">
select {[Part Brand].[Brand#23  ]} ON COLUMNS,
  {[Part Container].[MED BOX   ]} ON ROWS
from [Q17]
</jp:xmlaQuery>

<c:set var="title01" scope="session">Accessing Mondrian By XMLA, TPC-H Q17</c:set>
