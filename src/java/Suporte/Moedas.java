package Suporte;

public class Moedas {
     private String moedas;
    private double cotacao;
    
    public Moedas(String moedas, double cotacao){
        this.moedas = moedas;
        this.cotacao= cotacao;
    }

    /**
     * @return the moedas
     */
    public String getMoedas() {
        return moedas;
    }

    /**
     * @param moedas the moedas to set
     */
    public void setMoedas(String moedas) {
        this.moedas = moedas;
    }

    /**
     * @return the cotacao
     */
    public double getCotacao() {
        return cotacao;
    }

    /**
     * @param cotacao the cotacao to set
     */
    public void setCotacao(double cotacao) {
        this.cotacao = cotacao;
    }
}
