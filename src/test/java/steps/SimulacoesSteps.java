package steps;

import entidades.Simulacoes;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Quando;
import utils.RestUtils;

public class SimulacoesSteps {
	String url = "http://localhost:8080/api/";
	Simulacoes simulacoes;
	@Dado("que tenho a um payload de simulacao valido")
	public void queTenhoAUmPayloadDeSimulacaoValido() {
	    RestUtils.setBaseUri(url);
	    simulacoes = new Simulacoes("Fulano de Tal", "", "email@email.com", 
	    		                     1200, 3, true);
	    
	}
	
	
	@Dado("que tenho a um payload de simulacao invalido")
	public void queTenhoAUmPayloadDeSimulacaoInvalido() {
		RestUtils.setBaseUri(url);
	    simulacoes = new Simulacoes("Fulano de Tal", "", "email@email.com", 
	    		                     1200, 3, true);
	    simulacoes.remove("email");
	}
	
	@Quando("um post for realizado com o cpf {string}")
	public void umPostForRealizadoComOCpf(String cpf) {
	    simulacoes.setSimulacoes("cpf", cpf);
	    RestUtils.postRequest("v1/simulacoes", simulacoes.getSimulacoes());
	    
	}
	
	@Quando("o campo {string} for alterado para {string}")
	public void oCampoForAlteradoPara(String key, String value) {
	    simulacoes.setSimulacoes(key, value);
	}
	@Quando("um put for realizado com o cpf {string}")
	public void umPutForRealizadoComOCpf(String cpf) {
		simulacoes.setSimulacoes("cpf", cpf);
		RestUtils.putRequest("v1/simulacoes/"+cpf, simulacoes.getSimulacoes());
	    System.out.println(RestUtils.getBody());
	}
	
	@Quando("um get de simulacao for realizado")
	public void umGetDeSimulacaoForRealizado() {
	    RestUtils.setBaseUri(url);
	    RestUtils.getRequest("v1/simulacoes/");
	}
	
	@Quando("um get de simulacao for realizado com o cpf {string}")
	public void umGetDeSimulacaoForRealizadoComOCpf(String cpf) {
		RestUtils.setBaseUri(url);
	    RestUtils.getRequest("v1/simulacoes/"+cpf);
	}
	
	@Quando("um delete de simulacao for realizado com o id {int}")
	public void umDeleteDeSimulacaoForRealizadoComOId(int id) {
		RestUtils.setBaseUri(url);
	    RestUtils.deleteRequest("v1/simulacoes/"+id);
	}












	
	



}
