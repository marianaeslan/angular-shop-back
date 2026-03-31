component {

    public ProdutoRepository function init() {
        if (!structKeyExists(application, "produtos")) {
            application.produtos = [
            {
                id: createUUID(),
                titulo: "Curso Completo de Angular",
                preco: 299.90,
                descricao: "Domine a construção de interfaces reativas e escaláveis.",
                categoria: ["Front-end", "Web"]
            },
            {
                id: createUUID(),
                titulo: "Introdução ao ColdFusion",
                preco: 150.00,
                descricao: "Aprenda a criar APIs robustas e dinâmicas com CFML.",
                categoria: ["Back-end", "Web"]
            },
            {
                id: createUUID(),
                titulo: "TypeScript para Iniciantes",
                preco: 120.00,
                descricao: "Adicione tipagem estática e segurança ao seu código JavaScript.",
                categoria: ["Linguagem", "Front-end"]
            },
            {
                id: createUUID(),
                titulo: "React e Next.js na Prática",
                preco: 350.00,
                descricao: "Crie aplicações web modernas, velozes e otimizadas para SEO.",
                categoria: ["Front-end", "JavaScript"]
            },
            {
                id: createUUID(),
                titulo: "Arquitetura com Java e Spring Boot",
                preco: 400.00,
                descricao: "Desenvolvimento de APIs corporativas seguras e de alta performance.",
                categoria: ["Back-end", "Java"]
            },
            {
                id: createUUID(),
                titulo: "Desenvolvimento com Kotlin",
                preco: 250.00,
                descricao: "Crie aplicações modernas utilizando todo o poder do Kotlin.",
                categoria: ["Linguagem", "Mobile"]
            },
            {
                id: createUUID(),
                titulo: "Git e GitHub Essencial",
                preco: 80.00,
                descricao: "Domine o versionamento de código e fluxos de trabalho em equipe.",
                categoria: ["Ferramentas", "Versionamento"]
            },
            {
                id: createUUID(),
                titulo: "Web Design e UI com Tailwind CSS",
                preco: 180.00,
                descricao: "Estilize suas páginas rapidamente utilizando classes utilitárias.",
                categoria: ["Design", "CSS"]
            },
            {
                id: createUUID(),
                titulo: "Fundamentos de UX Writing",
                preco: 100.00,
                descricao: "Melhore a experiência do usuário através de textos claros e eficientes.",
                categoria: ["UX", "Design"]
            },
            {
                id: createUUID(),
                titulo: "JavaScript Avançado",
                preco: 220.00,
                descricao: "Aprofunde seus conhecimentos nos bastidores da linguagem da web.",
                categoria: ["Linguagem", "Front-end"]
            }
                ];
        }
        return this;
    }

    public void function salvar(required struct produto) {
        application.produtos.append(arguments.produto);
    }

    public array function buscarTodos() {
        return application.produtos;
    }

    public boolean function remover(required string id) {
        var tamanhoOriginal = application.produtos.len();

        application.produtos = application.produtos.filter(function(item) {
            return item.id != arguments.id;
        });

        return application.produtos.len() < tamanhoOriginal;
    }
}