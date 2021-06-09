package steps;

import io.cucumber.java.pt.Quando;
import utils.RestUtils;

public class RestricoesSteps {

	String url = "http://localhost:8080/api/v1/restricoes/";
	@Quando("um get for realizado com o cpf {string}")
	public void umGetForRealizadoComOCpf(String cpf) {
	    RestUtils.setBaseUri(url);
	    RestUtils.getRequest(cpf);
	}
	
	
	
}
