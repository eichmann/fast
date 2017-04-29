<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fast" uri="http://slis.uiowa.edu/FAST"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="lucene" uri="http://icts.uiowa.edu/lucene"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ontology Generator 1.0</title>
<style type="text/css" media="all">    @import "/viaf/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
            <h3>Search</h3>
            <form method='POST' action='search.jsp'>
                <input name="query" value="${param.query}" size=50> <input
                    type=submit name=submitButton value=Search><br>
                Display results as:
                <input type="radio" id="1" name="mode" value="work" <c:if test="${param.mode == 'work'}">checked</c:if>>  CreativeWork
                <input type="radio" id="2" name="mode" value="geo" <c:if test="${param.mode == 'geo'}">checked</c:if>>  GeoCoordinates
                <input type="radio" id="3" name="mode" value="intangible" <c:if test="${param.mode == 'intangible'}">checked</c:if>>  Intangible
                <input type="radio" id="4" name="mode" value="organization" <c:if test="${param.mode == 'organization'}">checked</c:if>>  Organization
                <input type="radio" id="5" name="mode" value="person" <c:if test="${param.mode == 'person' or empty param.mode}">checked</c:if>> Person
                <input type="radio" id="6" name="mode" value="place" <c:if test="${param.mode == 'place'}">checked</c:if>>  Place
                <br>
            </form>
            Boolean operators include &amp; (and), | (or) and ! (not).
            Parentheses can be used to group terms.
            <p><hr><p>
            <c:if test="${not empty param.query}">
                <h3>
                    Search Results:
                    <c:out value="${param.query}" />
                </h3>
                <c:set var="index"><util:propertyValue name="LuceneIndex"/></c:set>
                <c:choose>
                    <c:when test="${param.mode == 'work'}">
                        <lucene:search lucenePath="${index}/work"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="CreativeWork/CreativeWork.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'geo'}">
                        <lucene:search lucenePath="${index}/geo"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="GeoCoordinates/GeoCoordinates.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                     <c:when test="${param.mode == 'intangible'}">
                        <lucene:search lucenePath="${index}/intangible"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Intangible/Intangible.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'organization'}">
                        <lucene:search lucenePath="${index}/organization"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Organization/Organization.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'place'}">
                        <lucene:search lucenePath="${index}/place"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Place/Place.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'person' or empty param.mode}">
                        <lucene:search lucenePath="${index}/person"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Person/Person.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="name" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:otherwise>
                    </c:otherwise>
                </c:choose>
            </c:if>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

