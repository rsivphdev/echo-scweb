<%@tag description="Extended input tag to allow for sophisticated errors" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@attribute name="path" required="true" type="java.lang.String"%>
<%@attribute name="labelCode" required="true" type="java.lang.String"%>

<%@attribute name="id" required="false" type="java.lang.String"%>
<%@attribute name="cssClass" required="false" type="java.lang.String"%>
<%@attribute name="labelClass" required="false" type="java.lang.String"%>
<%@attribute name="required" required="false" type="java.lang.Boolean"%>
<%@attribute name="showErrorWithField" required="false" type="java.lang.Boolean"%>
<%@attribute name="items" required="false" type="java.util.Collection"%>
<%@attribute name="itemValue" required="false" type="java.lang.String"%>
<%@attribute name="itemLabel" required="false" type="java.lang.String"%>
<%@attribute name="includeBlankOption" required="false" type="java.lang.Boolean"%>
<%@attribute name="disabled" required="false" type="java.lang.String"%>

<c:set var="includeBlank" value="${(empty pageScope.includeBlankOption) ? true : pageScope.includeBlankOption}" />

<spring:bind path="${pageScope.path}">
    <div id="${pageScope.id}" class="form-group ${status.error ? 'has-error' : '' }">
        <form:label path="${pageScope.path}" cssClass="control-label ${pageScope.labelClass}"> <spring:message code="${pageScope.labelCode}"/> <c:if test="${pageScope.required}"><span class="required">*</span></c:if></form:label>
        <form:select path="${pageScope.path}" cssClass="form-control ${pageScope.cssClass}" disabled="${empty pageScope.disabled ? '' : disabled}">
        	<c:if test="${includeBlank == true }">
	        	<form:option value="" label=""/>
	        </c:if>
	        <c:choose>
                <c:when test="${not empty pageScope.items}">
                	<c:choose>
		                <c:when test="${not empty pageScope.itemLabel}">
		                    <form:options items="${pageScope.items}" itemLabel="${pageScope.itemLabel}" />
		                </c:when>
		                <c:otherwise>
		                    <form:options items="${pageScope.items}"/>
		                </c:otherwise>
		            </c:choose>
                </c:when>
                <c:otherwise>
                    <c:choose>
		                <c:when test="${not empty pageScope.itemLabel}">
		                    <form:options itemLabel="${pageScope.itemLabel}" />
		                </c:when>
		                <c:otherwise>
		                    <form:options/>
		                </c:otherwise>
		            </c:choose>
                </c:otherwise>
            </c:choose>
        </form:select>
        <c:if test="${status.error && pageScope.showErrorWithField}">
           <span class="help-block">${status.errorMessage}</span>
        </c:if>
    </div>
</spring:bind>
