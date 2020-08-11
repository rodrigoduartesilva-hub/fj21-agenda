<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href = "css/jquary.css" rel = "stylesheet">
<script> src= "js/jquary.js" </script>
<script> src= "js/jquary.ui.js" </script>
</head>
<body>
	<c:import url="cabesalho.jsp"/>
	
	<table>
		<c:forEach var = "contato" items = "${contatos}">
			<tr>
				<td>${contato.nome}</td>
				<td>
					<c:if test = "${not empty contato.email}">
						<a href = "mailto:${contato.email}" > ${contato.email}</a>
					</c:if>
					
					<c:if test="${empty contato.email}">
						E-mail n�o informado
					</c:if>
				</td>
				<td>${contato.endereco}</td>
				<td> 
					<fmt:formatDate value = "${contato.dataNascimento.time}" pattern = "dd/MM/yyyy" />
				</td>
				<td> <a href="mvc?logica=RemoveContatoLogic&id=${contato.id}"> Remover </a> </td>
			</tr>
		</c:forEach>
	</table>
	
	<c:import url = "rodape.jsp" />
</body>
</html>