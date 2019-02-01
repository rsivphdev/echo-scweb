<%@tag description="Combines a Font Awesome icon with a link" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="linkTextCode" required="false" type="java.lang.String"%>
<%@attribute name="linkText" required="false" type="java.lang.String"%>
<%@attribute name="id" required="false" type="java.lang.String"%>
<%@attribute name="linkClass" required="false" type="java.lang.String"%>
<%@attribute name="href" required="false" type="java.lang.String"%>
<%@attribute name="faClasses" required="false" type="java.lang.String"%>
<%@attribute name="faAfter" required="false" type="java.lang.String"%>
<%@attribute name="targetBlank" required="false" type="java.lang.String"%>
<%@attribute name="modalToggle" required="false" type="java.lang.Boolean"%>

<c:set var="href" value="${empty pageScope.href ? '#' : pageScope.href}"/>
<c:choose>
	<c:when test="${not empty pageScope.targetBlank}">	
		<c:set var="targetBlank" value="target='_blank'"/>
	</c:when>
	<c:otherwise>	
		<c:set var="targetBlank" value=""/>
	</c:otherwise>
</c:choose>

<c:choose>
	<c:when test="${pageScope.modalToggle}">	
		<c:set var="toggle" value="data-toggle='modal'"/>
	</c:when>
	<c:otherwise>	
		<c:set var="toggle" value=""/>
	</c:otherwise>
</c:choose>

<a id="${pageScope.id}" class="${pageScope.linkClass}" href="${href}" ${targetBlank} ${toggle}>
	<c:if test="${not empty pageScope.faClasses}">
		<i class="preText-icon fa ${pageScope.faClasses}"></i>
	</c:if>
	<span class="postIcon-span-text">
		<c:choose>
			<c:when test="${not empty pageScope.linkTextCode}">	
				<spring:message code="${pageScope.linkTextCode}" />
			</c:when>
			<c:when test="${not empty pageScope.linkText}">	
				${pageScope.linkText}
			</c:when>
		</c:choose>
		<c:if test="${not empty pageScope.faAfter}">
			<i class="fa ${pageScope.faAfter}"></i>
		</c:if>
	</span>
</a>
