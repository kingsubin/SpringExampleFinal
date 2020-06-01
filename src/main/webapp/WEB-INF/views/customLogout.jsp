<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Start Bootstrap - SB Admin Version 2.0 Demo</title>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script src="/resources/js/jquery-1.10.2.js"></script>

<!-- Core CSS - Include with every page -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<!-- SB Admin CSS - Include with every page -->
<link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Logout Page</h3>
					</div>
					<div class="panel-body">
						<form role="form" method="post" action="/customLogout">
							<fieldset>
								<!-- Change this to a button or input when using this as a form -->
								<a href="index.html" class="btn btn-lg btn-success btn-block">Logout</a>
							</fieldset>
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Core Scripts - Include with every page -->
	<script src="/resources/js/jquery-1.10.2.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>

	<!-- SB Admin Scripts - Include with every page -->
	<script src="/resources/js/sb-admin.js"></script>

<script type="text/javascript">
$(".btn-success").on("click", function(e) {
	e.preventDefault();
	$("form").submit();
	alert("로그아웃하였습니다 ");
});
</script>

<!-- 작동 안되서 주석 처리함 
<c:if test="${param.logout != null}">
	<script type="text/javascript">
		$(document).ready(function () {
			console.log("로그아웃하였습니다.");			
		});
	</script>
</c:if>
 -->

</body>
</html>