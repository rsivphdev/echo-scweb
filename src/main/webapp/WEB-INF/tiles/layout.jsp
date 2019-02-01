<%@ include file="global-include.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
	<META HTTP-EQUIV="X-UA-Compatible" CONTENT="IE=Edge" />
	
	<meta name="_csrf" content="${_csrf.token}"/>
	<!-- default header name is X-CSRF-TOKEN -->
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title><tiles:insertAttribute name="title" /></title>
	<link href="${RootPath}/resources/css/app.min.css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="/webjars/jquery-ui/jquery-ui.min.css" />
	<link rel="stylesheet" href="/webjars/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" />
	
	<script type="text/javascript" charset="utf-8">
	   function debug_log(message) {
			if (window.console !== undefined && '${environment}' != 'PRD') {
				console.log(message);
			}
		}
	</script>

</head>
<body>
	<div id="wrap">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="nav" />
		<tiles:insertAttribute name="body" />
	</div>
	<tiles:insertAttribute name="footer" />	
	
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/jquery-ui/jquery-ui.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script src="/webjars/datatables/js/dataTables.dataTables.min.js"></script>
	<script src="/webjars/bootbox/bootbox.js"></script>
	<script src="/webjars/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	
</body>
</html>