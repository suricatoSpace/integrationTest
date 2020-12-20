package steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Quando;
import definition.Processo;
import org.junit.Assert;
import support.RESTSupport;

public class ProcessosSteps {

    @Dado("^que o usuário gostaria de salvar um novo Processos no Agapito Server$")
    public void queOUsuárioGostariaDeSalvarUmNovoProcessosNoAgapitoServer() {
        Processo.limparCampos();
    }

    @E("^o usuário informar \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oUsuárioInformarComOValor(String campo, String valor) {
        Processo.preencherCampo(campo, valor);
    }

    @Quando("^o usuário clicar no botão salvar na tela de New Processos$")
    public void oUsuárioClicarNoBotãoSalvarNaTelaDeNewProcessos() {
        RESTSupport.executePost(Processo.getEndpoint(), Processo.getCampos());
        Processo.setId(RESTSupport.key("id").toString());
    }

    @Quando("^o usuário clicar em mostrar na tela de New Processos$")
    public void oUsuárioClicarEmMostrarNaTelaDeNewProcessos() {
        RESTSupport.executeGet(Processo.getEndpoint() + '/' + Processo.getId());
    }

    @E("^o usuário vai ver o campo \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oUsuárioVaiVerOCampoComOValor(String campo, String valor) {
        String atual = Processo.recuperarCampo(campo);
        Assert.assertEquals(valor, atual);
    }

    @E("^o usuário clicar em editar na tela Editing Processo$")
    public void oUsuárioClicarEmEditarNaTelaEditingProcesso() {
        RESTSupport.executePut(Processo.getEndpoint() + '/' + Processo.getId(), Processo.getCampos());
    }

    @Quando("^alterar o campo \"([^\"]*)\" para o valor \"([^\"]*)\" na tela Editing Processo$")
    public void alterarOCampoParaOValorNaTelaEditingProcesso(String campo, String valor) {
        Processo.preencherCampo(campo,valor);
    }

    @Quando("^o usuário clicar em mostrar na tela processos$")
    public void oUsuárioClicarEmMostrarNaTelaProcessos() {
        RESTSupport.executeGet(Processo.getEndpoint() + '/' + Processo.getId());
    }

    @Quando("^o usuário clicar em Apagar na tela processos$")
    public void oUsuárioClicarEmApagarNaTelaProcessos() {
        RESTSupport.executeDelete(Processo.getEndpoint() + '/' + Processo.getId());
    }


    @Dado("^que o usuário gostaria de salvar um processo$")
    public void queOUsuárioGostariaDeSalvarUmProcesso() {
        Processo.limparCampos();
    }

    @Quando("^o usuário clicar no botão salvar com esquema$")
    public void oUsuárioClicarNoBotãoSalvarComEsquema() {
        RESTSupport.executePost(Processo.getEndpoint(), Processo.getCampos());
    }
}
