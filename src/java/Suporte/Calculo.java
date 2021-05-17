package Suporte;


public class Calculo {
    public String conversao(double valor, String opcao){
        double resultado = 0;
        
        if(opcao.equals("dolar")){
            resultado = 5.27 * valor;
        }
        else if(opcao.equals("euro")){
            resultado = 6.41 * valor;
        }
        else if(opcao.equals("coin")){
            resultado = 283.084 * valor;
        }
        else if(opcao.equals("libra")){
            resultado = 7.46 * valor;
        }
      return String.format("O valor em " + opcao + " é: %.2f", resultado);
    }
    
    public String moedas(){
        String result = " Tipos de Moedas: <br>";
        String moeda[] = {"EURO = 6,41", "LIBRA = 7,46", "DOLAR: 5,27", 
            "PATACA = 0,66", "PESO DOMINICANO = 0,09","PESO CHILENO = 0,0074", 
            "PESO ARGENTINO = 0,056", "IENE = 0,048", "GUARANI = 0,00079"};
        
        for(int i = 0; i < moeda.length; i++){
            result += moeda[i] + "<br>";
        }
    return result;
    }
}
