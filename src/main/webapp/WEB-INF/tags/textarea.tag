<%@tag description="Extended input tag to allow for sophisticated errors" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@attribute name="id" required="false" type="java.lang.String"%>
<%@attribute name="path" required="true" type="java.lang.String"%>
<%@attribute name="cssClass" required="false" type="java.lang.String"%>
<%@attribute name="labelCode" required="false" type="java.lang.String"%>
<%@attribute name="labelClass" required="false" type="java.lang.String"%>
<%@attribute name="required" required="false" type="java.lang.Boolean"%>
<%@attribute name="showErrorWithField" required="false" type="java.lang.Boolean"%>
<%@attribute name="rows" required="false" type="java.lang.Integer"%>
<%@attribute name="maxLength" required="false" type="java.lang.Integer"%>
<%@attribute name="type" required="false" type="java.lang.String"%>
<%@attribute name="disabled" required="false" type="java.lang.String"%>
<%@attribute name="readonly" required="false" type="java.lang.String"%>
<%@attribute name="placeholder" required="false" type="java.lang.String"%>

<spring:bind path="${pageScope.path}">
    <div id="${pageScope.id}" class="form-group ${status.error ? 'has-error' : '' }">
        <form:label path="${pageScope.path}" cssClass="control-label ${pageScope.labelClass}"> <spring:message code="${pageScope.labelCode}"/> <c:if test="${pageScope.required}"><span class="required">*</span></c:if></form:label>
        <form:textarea path="${pageScope.path}" cssClass="form-control ${pageScope.cssClass}"
        	type="${empty pageScope.type ? 'text' : pageScope.type}"
        	rows="${empty pageScope.rows ? '5' : pageScope.rows}"
        	maxLength="${empty pageScope.maxLength ? '' : pageScope.maxLength}"
        	disabled="${empty pageScope.disabled ? '' : pageScope.disabled}"
        	readonly="${empty pageScope.readonly ? 'false' : pageScope.readonly}"
        	placeholder="${empty pageScope.placeholder ? '' : pageScope.placeholder}"
        />
        <c:if test="${status.error && pageScope.showErrorWithField}">
           <span class="help-block">${status.errorMessage}</span>
        </c:if>
    </div>
</spring:bind>
