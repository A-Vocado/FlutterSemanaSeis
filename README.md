# listagem_de_usuarios

Conforme estudado na semana o desafio proposto é o seguinte: 

![imagem-01.png](https://gitlab.com/raro-academy-flutter-edicao-02/aulas/-/raw/main/06-reatividade2/imagem-01.png)

![imagem-02.png](https://gitlab.com/raro-academy-flutter-edicao-02/aulas/-/raw/main/06-reatividade2/imagem-02.png)

Criar uma aplicacao Flutter onde tenha uma Home Page e nela uma Lista de Objeto PessoaModel retornada.

Objeto Pessoa deve conter como propriedades : nome, sobrenome, idade, nacionalidade, profissao.

Projeto deve ter classes abstratas com os contratos a serem seguidos por quem for implementar.

Exemplo do que precisa conter : 

## HomePage - Page no Flutter para exibir lista.
    Ao entrar na HomePage simular um tempo de 5 segundos para entao trazer a listagem de pessoas.

    HomeController - Classe que vai ser chamada para acionar o repositório responsavel por trazer a lista de pessoas.
 
## Interfaces

    IHomeRepository - definicao de contrato do que deve ser retornado por quem implementar

    IHttpClient - definicao de contrato do que deve ser retornado por quem implementar
 
## Models

    PessoaModel - Objeto que precisa ser retornado

## Repositories

    HomeRepository - Repositório responsavel por retornar a lista de pessoas (chama o HttpClient)
 
## Shared

    HttpClient - Classe que simula a busca em uma API externa.
