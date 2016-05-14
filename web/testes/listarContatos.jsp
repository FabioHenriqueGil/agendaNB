<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="br.ufpr.dao.ContatoDao"%>
<%@page import="br.ufpr.modelo.Contato"%>
<%@page import="java.util.List"%>
<html>
    <head>
        <meta charset="UTF-8">
        <title>agenda</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/bootstrap.min.js">

        </script>
    </head>
    <body>
        <div class="container" align="center">
            <c:import url="cabecalho.jsp" />
        </div>
<jsp:useBean id="dao" class="br.ufpr.dao.ContatoDao" />
          

        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading" align="center">Lista de Contatos</div>

                <div class="panel panel-primary">
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <td><b>ID</b></td>
                                <td><b>NOME</b></td>
                                <td><b>E-MAIL</b></td>
                                <td><b>ENDEREÇO</b></td>
                                <td><b>DATA DE NASCIMENTO</b></td>
                                <td><b>Alterar</b></td>
                                <td><b>Deletar</b></td>
                            </tr>
                            
                            <c:forEach var="contato" items="${dao.lista}">
                                <tr>
                                    <td>${contato.id}</td>
                                    <td>${contato.nome}</td>
                                    <td><c:choose>
                                            <c:when test="${not empty contato.email}">
                                                <a href="mailto:${contato.email}">${contato.email}</a>
                                            </c:when>
                                            <c:otherwise>
                                                E-MAIL NÃO INFORMADO!
                                            </c:otherwise>
                                        </c:choose> <%-- 								<c:if test="${not empty contato.email}"> --%> <%-- 										<a href="mailto:${contato.email}">${contato.endereco}</a> --%>
                                        <%-- 									</c:if> --%></td>

                                    <td>${contato.endereco}</td>
                                    <td><fmt:formatDate value="${contato.dataNascimento.time}"
                                                    pattern="dd/MM/yyyy" /></td>
                                    <td><button id="${contato.id}" class="btn btn-primary"
                                                onclick="window.location.href = 'alterarContato.jsp?id=${contato.id}';">
                                            Alterar</button></td>
                                    <td> <button id="${contato.id}" class="btn btn-danger"
                                                 onclick="deleta(${contato.id})">
                                            Deletar</button>
                                        <script>
                                            function deleta(id) {
                                                if (confirm("Deseja apagar o contato?")) {
                                                    window.location.href = "deletarContatoServlet?id=" + id;
                                                }
                                            }


                                        </script>
                                    </td>
                                </tr>

                            </c:forEach>

                        </table>
                    </div>
                </div>
                <div align="center">
                    <button class="btn btn-primary"
                            onclick="window.location.href = 'adicionaContato.jsp';">ADD
                    </button>
                </div>
            </div>
        </div>
    </body>
</html>