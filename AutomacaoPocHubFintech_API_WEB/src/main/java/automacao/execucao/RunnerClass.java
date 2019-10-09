package automacao.execucao;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(tags={"@testeWeb"},
					//features = "src/main/java/automacao/execucao/Pessoa.feature", 
					glue = "automacao", 
					monochrome = true,
					dryRun = false
				)
public class RunnerClass {

}
