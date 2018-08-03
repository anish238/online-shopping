<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<
<spring:url var="css" value="/resource/css" />
<
<spring:url var="js" value="/resource/js" />
<
<spring:url var="image" value="/resource/images" />


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online shopping - ${title}</title>
<script>
	window.menu = '${title}'
</script>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/${ css}/bootstrap.min.css" rel="stylesheet">

<!-- Boostrap readable theme -->
<link href="${ css}/boostrap-readable-theme.css" rel="stylesheet">



<!-- Custom styles for this template -->
<link href="${ css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>


		<!-- Page Content -->
		<!-- Loading HOME CONTENT  -->
		<div class="content">
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Loading Only when User Click about  -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Loading Only when User Click Contact  -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>

		</div>



		<!--  Footer come here -->
		<%@include file="./shared/footer.jsp"%>

		<!-- /.container -->
		<%@include file="./shared/navbar.jsp"%>


		<!--  JQuery -->
		<script src="${js}/jquery.js"></script>


		<!-- Bootstrap core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!--  self coded javascript -->
		<script src="${js}/myapp.js"></script>

	</div>

</body>

</html>
