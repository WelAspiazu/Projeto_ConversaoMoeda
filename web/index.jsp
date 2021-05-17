<%@page import="Suporte.Calculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Suporte.Moedas"%>
<html>
    <head>
        <title>Conversão Moedas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <%
                //criando uma lista do valor de cotação de cada moeda
                List<Moedas> moeda = new ArrayList<Moedas>();
                moeda.add(new Moedas("Dolar", 5.27));
                moeda.add(new Moedas("Euro", 6.41));
                moeda.add(new Moedas("BitCoin", 283.084));
                moeda.add(new Moedas("Libra", 7.46));
                
                for(Moedas valor: moeda){
                    out.print("Moeda: " + valor.getMoedas() + "<br>");
                    out.print("Cotação: " + valor.getCotacao() + "<br>");
                    out.print("----------------------<br>");
                }
                out.print(new Calculo().moedas());
            %>
        </div>
        <h3>Calculo de Conversão</h3>
        <div id="dados">
            <form action="recebeCalculo.jsp" method="get" target="result">
                <h4>
                    Escolha moeda e digite a quantidade em 
                        real a qual deseja converter, 
                        para ver os resultados abaixo.</h4>  
                <select name="opcao">
                    <option value="dolar">DOLAR</option>
                    <option value="euro">EURO</option>
                    <option value="coin">BITCOIN</option>
                    <option value="libra">LIBRA</option>
                </select>
                <br>
                <br>
                
                <table>
                    <tr>
                        <td>Valor: </td>
                        <td><input type="text" name="valor"/></td>
                    </tr>
                </table>
                <br>
                <input type="submit" value="Calcular"/>
            </form>
        </div>
        
        <div id="retorno">
            <iframe name="result" width="390" height="200"></iframe>
        </div>
    </body>
</html>
