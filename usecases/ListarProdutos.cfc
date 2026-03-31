component {
    public ListarProdutos function init(required adapters.database.ProdutoRepository repositorio) {
        variables.repositorio = arguments.repositorio;
        return this;
    }

    public array function executar() {
        var produtos = variables.repositorio.buscarTodos();
        return produtos;
    }
}