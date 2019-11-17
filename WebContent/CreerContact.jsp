<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@ taglib prefix="nested" uri="http://struts.apache.org/tags-nested" %>


<html:html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>
	<html:form action="/CreerContact">
	<html:errors/>
		<label>Nom</label> <input type="text" name="nom"><br>
		<label>Pr�nom</label> <input type="text" name="prenom"><br>
		<label>Email</label> <input type="email" name="email"><br>
		<label>T�l�phone</label><input type="text" name="telephone"><br>
		<label>Adresse</label><input type="text" name="adresse"><br>
		<html:submit>Envoyer</html:submit>
	</html:form>
</body>
</html:html>