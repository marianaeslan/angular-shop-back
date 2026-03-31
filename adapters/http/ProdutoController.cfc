component {
    private void function liberarCORS() {
        var response = getPageContext().getResponse();
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
    }

    remote array function listar() returnFormat="json" {
        liberarCORS();
        var repositorio = new adapters.database.ProdutoRepository();
        var casoDeUso = new usecases.ListarProdutos(repositorio);

        return casoDeUso.executar();
    }
}