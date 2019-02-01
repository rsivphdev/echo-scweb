<%@ include file="/WEB-INF/tiles/taglibs.jsp"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<c:set var="newline" value="<%= \"\n\" %>" />

<%-- regular staff (with read and write rights) logged in --%>
<c:set var="staffAccess" value="false"/>
<c:set var="isLoggedOn" value="false"/>
<sec:authorize access="hasRole('ROLE_STAFF')">
	<c:set var="staffAccess" value="true"/>
	<c:set var="isLoggedOn" value="true"/>
	<sec:authentication property="principal" var="currentUser" />
</sec:authorize>

<%-- settings to add an environmental label to the test environment screens --%>
<c:set var="environment" value="Dev"/>

<c:set var="RootPath" value="${pageContext.request.contextPath}"/>

<c:set var="VPHDisplayDateWithTime" value="yyyy-MM-dd HH:mm:ss"/>
<c:set var="VPHDisplayDateNoTime" value="yyyy-MM-dd"/>
<c:set var="VPHEnterDateMask" value="yyyy-mm-dd"/>

<c:set var="newLine" value="<%= \"\n\" %>"/>