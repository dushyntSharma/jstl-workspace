<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>JSTL Demo</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://127.0.0.1:3306/jstl" user="root" password="9909"
	scope="session" />
<style>
form {
	display: inline-block;
	margin-left: 25%;
	margin-right: 25%;
	width: 50%;
}
</style>
</head>
<body>
	<button type="button" class="btn btn-outline-success">
		<a href='<c:url value="/index.jsp"/>'>Back</a>
	</button>

	<form method="post">
		<h1 class="text-danger">Insert Data</h1>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="text"
					class="form-control" id="firstname" name="firstname"
					placeholder="First Name*"> <span class="error_form"
					id="namecheck1"></span>
			</div>

		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputPassword4"> </label> <input type="email"
					class="form-control" id="email" name="email"
					placeholder="Email Address*"> <span class="error_form"
					id="emailC"></span>
			</div>

		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="text"
					class="form-control" id="profession" name="profession"
					placeholder="Profession"> <span class="error_form"
					id="gendercheck"></span>
			</div>


		</div>

		<center>
			<button type="submit" id="btnid" onclick="formData()"
				class="btn btn-danger" value="submit">Register</button>
		</center>

	</form>
	<c:if test="${pageContext.request.method=='POST'}">
		<c:catch var="exception">
			<sql:update dataSource="${dataSource}" var="updatedTable">
INSERT INTO users(name,email, profession) VALUES(?,?,?)
<sql:param value="${param.firstname}" />
				<sql:param value="${param.email}" />
				<sql:param value="${param.profession}" />
			</sql:update>
			<c:if test="${updatedTable>=1}">
				<font size="5" color='green'> Congratulations ! Data inserted
					successfully.</font>
			</c:if>
		</c:catch>
		<c:if test="${exception!=null}">
			<c:out value="Unable to insert data in database." />
		</c:if>
	</c:if>
</body>
</html>