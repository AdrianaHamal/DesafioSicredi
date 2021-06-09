# DesafioSicredi
Como executar via ide Junit:
1. Importar na ide de preferencia o projeto como maven java
2. Abrir o arquivo RunnerTest.java e executar via Junit

2.1 Ou executar o projeto como Junit

Como executar via cucumber feature:
1. selecionar o arquivo em src/test/resources/feature/
2. executar como cucumber feature

Como executar via linha de comando utilizando maven(necessario ter o maven configurado na maquina):
1. Abrir o terminal no diretorio do projeto
2. Executar o comando: mvn test

Como executar via linha de comando utilizando maven, para gerar relatorio(necessario ter o maven configurado na maquina):
1. Abrir o terminal no diretorio do projeto
2. Executar o comando: mvn install
3. abrir o arquivo: \target\reports\cucumber-html-reports\overview-features.html

# Estrutura do Projeto
Pacotes:

	
	Runner:
		Pacote responsavel pela parte das classes de execuções utilizando JUnit e RunWith Cucumber.class

	Steps:
		Pacote responsavel para guardar as Classes de Steps, as quais são geradas pelo cucumber. Nessas classes são chamadas as ações das paginas
			Através das pages e validações.
	Utils:
		Pacote responsavel para guardar as Classes de utilidades, as quais são responsáveis por guardar métodos que serão utilizados em comum no projeto 
			como um todo, como métodos do RestAssured
	
	Entidades:
		Pacote responsavel para guardar as Classes das entidades, onde ficam localizadas todas as entidades necessária para execução do projeto
	
	features:
		Diretório responsável para guardar os arquivos .feature, onde estão gravados os arquivos relacionados ao cucumber e as escrita em gherkin