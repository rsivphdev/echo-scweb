<%@ include file="/WEB-INF/tiles/global-include.jsp" %>
<nav class="nav-regi">
	<div class="container">
		<div class="row">
			<c:set var="page" scope="request"><tiles:insertAttribute name="pageId" /></c:set>
			<div class="col-xs-6 col-sm-8 col-md-9 vcenter-xs">
				<ul class="nav nav-tabs">
					<li class="${page == 'SC-L04' ? 'active' : ''}"><a href="${RootPath}/"><spring:message code="nav.statistics.tab" /></a></li>
					<li class="${page == 'SC-L03' ? 'active' : ''}"><a href="${RootPath}/vpherror"><spring:message code="nav.errorConsole_tab" /></a></li>
					<li class="${page == 'SC-L05' ? 'active' : ''}"><a href="${RootPath}/report"><spring:message code="nav.report.tab" /></a></li>
					<li class="${page == 'SC-L01' ? 'active' : ''}"><a href="${RootPath}/adminTools"><spring:message code="nav.home.tab" /></a></li>
				</ul>
			</div>
		</div>
	</div>
</nav>