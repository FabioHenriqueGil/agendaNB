<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Adiona Contato</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="js/jquery/jquery-ui.css">
        <script src="js/bootstrap.min.js"></script>
        <!-- <script src="js/jquery/jquery-ui.js" ></script> -->
        <!-- <script src="js/jquery/jquery-1.9.1.js"></script> -->
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

    </head>
    <body>
        <div class="container" align="center">
            <c:import url="cabecalho.jsp" />
        </div>
        <form role="form" action="adicionaContato" method="GET">
            <div class="container">
                <div class="panel panel-primary">
                    <div class="panel-heading" align="center">Cadastro</div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="nome">Nome:</label> <input type="text"
                                                                   class="form-control" name="nome" id="nome">
                        </div>
                        <div class="form-group">
                            <label for="email">E_Mail:</label> <input type="email"
                                                                      class="form-control" name="email" id="email">
                        </div>
                        <div class="form-group">
                            <label for="endereco">Endereço:</label> <input type="text"
                                                                           class="form-control" name="endereco" id="endereco">
                        </div>
                        <div class="form-group">
                            <label for="dataNascimento">Data de Nascimento:</label>
                            <tags:campoData id="dataNascimento" />

                        </div>
                        <button type="submit" class="btn btn-primary">Gravar</button>
                        <button type="button" class="btn btn-primary"
                                onclick="window.location.href = 'index.jsp';">Cancelar</button>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
