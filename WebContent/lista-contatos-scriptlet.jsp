<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.util.*,
				  br.com.caelum.agenda.dao.*,
				  br.com.caelum.agenda.modelo.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			for (Contato contato : contatos) {
		%>
		
			<tr>
				<td> <%= contato.getNome() %> </td>	
				<td> <%= contato.getEmail() %> </td>
				<td> <%= contato.getEndereco() %> </td>
				<td> <%= contato.getDataNascimento().getTime() %> </td>
			</tr>
		<% } %>
	</table>
</body>
</html>