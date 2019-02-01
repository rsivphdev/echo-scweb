<%@tag description="Extended input tag to allow for sophisticated errors" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@attribute name="path" required="true" type="java.lang.String"%>
<%@attribute name="labelCode" required="true" type="java.lang.String"%>
<%@attribute name="cssClass" required="true" type="java.lang.String"%>
<%@attribute name="type" required="true" type="java.lang.String"%>

<%@attribute name="id" required="false" type="java.lang.String"%>
<%@attribute name="divClass" required="false" type="java.lang.String"%>
<%@attribute name="labelClass" required="false" type="java.lang.String"%>
<%@attribute name="allcaps" required="false" type="java.lang.String"%>
<%@attribute name="required" required="false" type="java.lang.Boolean"%>
<%@attribute name="initialHelpText" required="false" type="java.lang.String"%>
<%@attribute name="showErrorWithField" required="false" type="java.lang.Boolean"%>
<%@attribute name="placeholder" required="false" type="java.lang.String"%>
<%@attribute name="autofocus" required="false" type="java.lang.Boolean"%>
<%@attribute name="value" required="false" type="java.lang.String"%>
<%@attribute name="width" required="false" type="java.lang.String"%>
<%@attribute name="autocomplete" required="false" type="java.lang.String"%>
<%@attribute name="disabled" required="false" type="java.lang.String"%>
<%@attribute name="readonly" required="false" type="java.lang.String"%>
<%@attribute name="maxLength" required="false" type="java.lang.String"%>

<spring:bind path="${pageScope.path}">
    <div id="${pageScope.id}" class="form-group ${pageScope.divClass} ${status.error ? 'has-error' : '' }">
        <form:label path="${pageScope.path}" cssClass="control-label ${pageScope.labelClass}"> <spring:message code="${pageScope.labelCode}"/> <c:if test="${pageScope.required}"><span class="required">*</span></c:if></form:label>
        <form:input path="${pageScope.path}" cssClass="${pageScope.cssClass} ${pageScope.allcaps}" 
        		type="${pageScope.type}" 
        		width="${empty pageScope.width ? '' : pageScope.width}" 
        		maxLength="${empty pageScope.maxLength ? '' : pageScope.maxLength}" 
        		readonly="${empty pageScope.readonly ? '' : pageScope.readonly}" 
        		value="${empty pageScope.value ? '' : pageScope.value}" 
        		disabled="${empty pageScope.disabled ? '' : pageScope.disabled}" 
        		placeholder="${empty pageScope.placeholder ? '' : pageScope.placeholder}" 
        		autofocus="${empty pageScope.autofocus ? '' : pageScope.autofocus}" 
        		autocomplete="${empty pageScope.autocomplete ? '' : pageScope.autocomplete}"   
        		/>
        <c:choose>
        	<c:when test="${status.error && pageScope.showErrorWithField}">
        		<span class="help-block">${status.errorMessage}</span>
        	</c:when>
        	<c:otherwise>
        		<c:if test="${not empty pageScope.initialHelpText}">
		           <span class="help-block"><spring:message code="${pageScope.initialHelpText}"/></span>
		        </c:if>
        	</c:otherwise>
        </c:choose>
    </div>
</spring:bind>
