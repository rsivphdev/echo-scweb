<%@tag description="Extended input tag to allow for sophisticated errors" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@attribute name="showIcon" required="false" type="java.lang.Boolean"%>
<%@attribute name="hrAfter" required="false" type="java.lang.Boolean"%>
<%@attribute name="spaceAfter" required="false" type="java.lang.Boolean"%>
<%@attribute name="noAlertPanel" required="false" type="java.lang.Boolean"%>
<%@attribute name="bindingObject" required="true" type="java.lang.String"%>

<spring:hasBindErrors name="${pageScope.bindingObject}">
	<div id="id_validationError" class="${pageScope.noAlertPanel == true ? '' : 'alert alert-danger fade in large'}">
		<c:if test="${pageScope.showIcon == true}">
			<i class="preText-icon fa fa-lg fa-exclamation-circle text-danger"></i>
		</c:if>
	    <form:errors path="*" cssClass="postIcon-span-text text-danger"/>
	    <c:if test="${pageScope.hrAfter == true}">
			<hr />
		</c:if>	
		<c:if test="${pageScope.spaceAfter == true}">
			<br />
		</c:if>	
	</div>
</spring:hasBindErrors>
