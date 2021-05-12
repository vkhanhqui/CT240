<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value="/static/css/style.css" />">
<link rel="icon" type="image/png"
	href="<c:url value="/static/images/icon.jpg" />">

<title>Update User</title>
</head>
<body>
	<div class="container">
		<div class="form-container">
			<div class="tab-control">
				<h3 class="tab-control-btn register">Update your information</h3>
			</div>
			<div class="register-form form active">
				<form action="<c:url value="/update-user" />"
					enctype="multipart/form-data" method="POST">
					<input type="text" class="txt-input border"
						placeholder="${user.username}" name="username" disabled> <input
						type="password" class="txt-input border" placeholder="Password"
						name="password"> <input type="password"
						class="txt-input border" placeholder="Re Password"> <select
						name="gender" class="txt-input border gender-select" id="">
						<option value="true">Male</option>
						<option value="false">Female</option>
					</select> <label for="image"> <img
						src="<c:url value="/static/images/user-male.jpg" />"
						class="image-profile" alt="">
					</label> <input type="file" accept="image/*" name="avatar" id="image"
						class="image-file">

					<button type="submit" class="btn btn-login border">Update</button>
					<a href="<c:url value="/chat" />" class="btn btn-login border"
						style="background-color: grey; text-align: center;">Go back</a>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<c:url value="/static/js/login.js" />" charset="utf-8"></script>
</body>
</html>