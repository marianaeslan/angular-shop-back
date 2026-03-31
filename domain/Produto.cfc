component {
    public Produto function init(string id = createUUID(), required string titulo, required numeric preco, required string descricao, required array categoria) {
        variables.id = arguments.id;
        variables.titulo = arguments.titulo;
        variables.descricao = arguments.descricao;
        variables.categoria = arguments.categoria;
        variables.preco = arguments.preco;
        return this;
    }

    public struct function toStruct() {
        return {
        id: variables.id,
        titulo: variables.titulo,
        descricao: variables.descricao,
        categoria: variables.categoria,
        preco: variables.preco
        };
    }
}