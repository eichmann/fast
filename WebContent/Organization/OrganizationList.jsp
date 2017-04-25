<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fast" uri="http://slis.uiowa.edu/FAST"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Organization List - http://schema.org/Organization</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
<ul>
<fast:foreachOrganization>
   <fast:Organization>
      <li><a href="Organization.jsp?uri=<fast:OrganizationSubjectURI/>"><fast:OrganizationLabel/></a>
   </fast:Organization>
</fast:foreachOrganization>
</ul>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

