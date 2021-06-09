package entidades;

import java.util.LinkedHashMap;

public class Simulacoes{
    LinkedHashMap<String, Object> simulacoes = new LinkedHashMap<>();
    public Simulacoes(Object nome, Object cpf, Object email, Object valor, 
                     Object parcelas, Object seguro){
        simulacoes.put("nome",nome);
        simulacoes.put("cpf",cpf);
        simulacoes.put("email",email);
        simulacoes.put("valor",valor);
        simulacoes.put("parcelas",parcelas);
        simulacoes.put("seguro",seguro);
    }

    public LinkedHashMap<String, Object> getSimulacoes() {
        return simulacoes;
    }
    public void setSimulacoes(String key, Object value){
        simulacoes.put(key, value);
    }
    public void remove(String key){
        simulacoes.remove(key);
    }
}
