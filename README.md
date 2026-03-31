
# Angular Shop - API

Este é o back-end de um projeto de estudo desenvolvido para integrar ColdFusion com um front-end em Angular. A aplicação serve uma API RESTful simples que fornece uma lista de produtos (cursos de tecnologia) e gerencia as permissões de CORS necessárias para a comunicação direta com o front-end.

## Arquitetura

O projeto foi estruturado seguindo os princípios da **Clean Architecture**, dividindo as responsabilidades em camadas distintas para facilitar a manutenção e escalabilidade:

* **Domain (`/domain`):** Contém as entidades e regras de negócio centrais (`Produto.cfc`).
* **Use Cases (`/usecases`):** Orquestra o fluxo de dados entre o domínio e os adaptadores (`ListarProdutos.cfc`).
* **Adapters (`/adapters`):** Faz a ponte com o mundo externo.
  * **Database (`/adapters/database`):** Repositório que simula um banco de dados persistindo os dados na memória do servidor (`ProdutoRepository.cfc`).
  * **HTTP (`/adapters/http`):** Controladores que recebem as requisições web e retornam os dados via API (`ProdutoController.cfc`).

## Tecnologias Utilizadas

* ColdFusion (CFScript)
* CommandBox

## Como Executar o Projeto

1. Certifique-se de ter o CommandBox instalado no seu ambiente.
2. Através do terminal, navegue até a pasta raiz do projeto.
3. Inicie o servidor local executando o comando:

```bash
box server start
```

## Endpoints da API
- Método: ``` GET ```  
- URL: ```/adapters/http/ProdutoController.cfc?method=listar ```
- Resposta: 
```
[
  {
    "id": "550e8400-e29b-41d4-a716-446655440000",
    "titulo": "Curso Completo de Angular",
    "preco": 299.9,
    "descricao": "Domine a construção de interfaces reativas e escaláveis.",
    "categoria": [
      "Front-end",
      "Web"
    ]
  }
]
```

## Utilitários
Como o banco de dados é simulado na memória da aplicação (escopo application), você pode limpar e reiniciar o estado do servidor a qualquer momento. Para isso, acesse a URL base adicionando o parâmetro de recarregamento:

Comando HTTP: ```GET /?reload=true```

Isso forçará a aplicação a ser reiniciada e os mocks do repositório serão recriados na próxima requisição.

<hr>


<mark>Desenvolvido por <strong> Mariana Eslan </strong> como projeto prático de integração entre Angular e ColdFusion.</mark>
