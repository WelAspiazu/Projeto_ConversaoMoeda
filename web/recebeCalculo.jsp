<%@page import="Suporte.Calculo" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recebe Calculo</title>
    </head>
    <body>
        <%
            String entrada = request.getParameter("valor");
            String opcao = request.getParameter("opcao");
            
            Double valor = Double.parseDouble(entrada);
            
            out.print(new Calculo().conversao(valor, opcao));
            
        %>
    </body>
</html>
