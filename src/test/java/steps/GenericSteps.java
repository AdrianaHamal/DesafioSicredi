package steps;

import static org.junit.Assert.assertEquals;

import io.cucumber.java.pt.Entao;
import utils.RestUtils;

public class GenericSteps {

	@Entao("o sistema devolve o status {int}")
	public void oSistemaDevolveOStatus(int status) {
	    assertEquals(status, RestUtils.getStatusCode());
	}
	
	
	@Entao("no campo {string} retorna o valor {string}")
	public void noCampoRetornaOValor(String key, String value) {
	    assertEquals(value, RestUtils.getResponse(key));
	}
	
	@Entao("no campo {string} retorna o valor {int}")
	public void noCampoRetornaOValor(String key, int value) {
		assertEquals(value, RestUtils.getResponse(key));
	}
	
	
	@Entao("no campo {string} retorna o valor true")
	public void noCampoRetornaOValorTrue(String key) {
		assertEquals(true, RestUtils.getResponse(key));
	}












}
