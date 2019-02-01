<%@ include file="/WEB-INF/tiles/global-include.jsp"%>
<!-- HEADER -->

<header>
	<div class="container">
		<div class="row">
			<div class="${isLoggedOn ? 'col-sm-8' : 'col-xs-12'} title-header-col">
				<a class="headerlogo" href="#"></a>
				<div class="title">
					&nbsp;&nbsp;&nbsp;<strong><spring:message code="header.title" /></strong>
				</div>
			</div>	
			
			<c:if test="${isLoggedOn}">		
				<div class="col-sm-4 text-right login-header">
					<i class="fa fa-user"></i>  &nbsp;<strong>${currentUser.displayName}</strong> &nbsp;|&nbsp; <a href="${RootPath}/public/spring/logout"><spring:message code="nav.logout" /></a>				
				</div>
			</c:if>

		</div>
	</div>
</header>
        
