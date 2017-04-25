<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fast" uri="http://slis.uiowa.edu/FAST"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GeoCoordinates - http://schema.org/GeoCoordinates</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altGeoCoordinates.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=GeoCoordinates&uri=${param.uri}">RDF dump</a></p>
   <fast:GeoCoordinates subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<fast:GeoCoordinatesSubjectURI/>"><fast:GeoCoordinatesSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><fast:GeoCoordinatesLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <fast:foreachGeoCoordinatesLatitudeIterator>
         <tr><td>latitude</td><td><fast:GeoCoordinatesLatitude /></td></tr>
      </fast:foreachGeoCoordinatesLatitudeIterator>
      <fast:foreachGeoCoordinatesLongitudeIterator>
         <tr><td>longitude</td><td><fast:GeoCoordinatesLongitude /></td></tr>
      </fast:foreachGeoCoordinatesLongitudeIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
      <fast:foreachGeoCoordinatesGeoInverseIterator>
         <tr><td>geo</td><td><a href="../<fast:GeoCoordinatesGeoInverseType/>/<fast:GeoCoordinatesGeoInverseType/>.jsp?uri=<fast:GeoCoordinatesGeoInverse/>"><fast:GeoCoordinatesGeoInverse/></a></td></tr>
      </fast:foreachGeoCoordinatesGeoInverseIterator>
   </table>
   </fast:GeoCoordinates>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

