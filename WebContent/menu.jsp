<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
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


<nav class="navbar navbar-expand-sm bg-light">
		<logic:iterate id="groupe" name="allGroupe">
			<html:form action="/Groupe">
							<html:errors/>
							<input type="hidden" name="id" value="<bean:write name="groupe" property="id"/>" />
							<a href="Groupe.jsp" onclick="parentNode.submit();"><bean:write name="groupe" property="nom"/></a>
						</html:form>
		</logic:iterate>
</nav>
	<a href="CreerContact.do"><bean:message key="creer_contact"/></a>
	<a href="RechercheContact.do"><bean:message key="recherche_contact"/></a>
	<a href="CreerGroupe.do"><bean:message key="creer_groupe"/></a>
	<a href="SupprimerGroupe.do"><bean:message key="supp_groupe"/></a>
	
	<br>
	<br>
	

	
	<logic:present name="allContact">
		<logic:empty name="allContact">
		Vous n'avez aucun contact
		</logic:empty>
	</logic:present>
	
	<logic:present name="allContact">
		<h4><bean:message key="titre_contact"/></h4>
		<table border="2">
			<thead>
				<tr>
					<th>#</th>
					<th><bean:message key="tab_nom"/></th>
					<th><bean:message key="tab_prenom"/></th>
					<th><bean:message key="tab_email"/></th>
					<th><bean:message key="tab_tel"/></th>
					<th><bean:message key="tab_adr"/></th>
				</tr>
			</thead>
			<tbody>
				<logic:iterate id="contact" name="allContact">
					<tr>
						<td> <bean:write name="contact" property="id"/></td>
						<td>
						<html:form action="/Contact">
							<html:errors/>
							<input type="hidden" name="id" value="<bean:write name="contact" property="id"/>" />
							<a href="Contact.jsp" onclick="parentNode.submit();"><bean:write name="contact" property="nom"/></a>
						</html:form>
						</td>
						<td> <bean:write name="contact" property="prenom"/></td>
						<td> <bean:write name="contact" property="email"/></td>
						<td> <bean:write name="contact" property="telephone"/></td>
						<td> <bean:write name="contact" property="adresse"/></td>
					</tr>
				</logic:iterate>
			</tbody>
		</table>
	</logic:present>

</body>
</html:html>