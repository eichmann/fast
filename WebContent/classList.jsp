<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fast" uri="http://slis.uiowa.edu/FAST"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Class List</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
<ol class="bulletedList">
<li><a href="<util:applicationRoot/>/CreativeWork/CreativeWorkList.jsp">CreativeWork</a>
<li><a href="<util:applicationRoot/>/GeoCoordinates/GeoCoordinatesList.jsp">GeoCoordinates</a>
<li><a href="<util:applicationRoot/>/Intangible/IntangibleList.jsp">Intangible</a>
<li><a href="<util:applicationRoot/>/Organization/OrganizationList.jsp">Organization</a>
<li><a href="<util:applicationRoot/>/Person/PersonList.jsp">Person</a>
<li><a href="<util:applicationRoot/>/Place/PlaceList.jsp">Place</a>
</ol>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

