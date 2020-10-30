# eProjects

Aplicação web proposta para resolver problema apresentado no desafio para a vaga de Desenvolvedor.

Ao entrar numa nova empresa, precisar gerenciar projetos e suas respectivas atividades. Precisou-se criar uma aplicação para realizar o cadastro de projetos com datas de inicio e fim para a entrega, e estes com a possibilidade de ter N atividades.

#### Recursos da aplicação
  - CRUD de Projetos e atividades
  - Visualização do andamento do projeto em %, considerando o número de atividades pelo número de ativiadades concluidas.
  - Situação do projeto(Atrasado ou não) de acordo com as datas das atividades em relação a data final do projeto. 

### Tecnologias utilizadas!

  * [Ruby](https://www.ruby-lang.org/pt/) - Linguagem de programação
  * [RubyOnRails](https://rubyonrails.org/) - Framework
  * [Postgresql](https://www.postgresql.org/) - Banco de Dados
  * [jquery](https://jquery.com/) - Biblioteca javascript
  * [bootstrap](https://getbootstrap.com/) - Biblioteca UI
  
Motivos pelos quais essas foram as tecnologias escolhidas:

> Quanto a linguagem ruby e o framework rubyOnrails a escolha se deu pelo conhecimento prevido a trabalhar com essa tecnologia a pouco mais de um ano.
> E essa combinação torna o processo de desenvolvimento do ambiente backend e a integração com o frontend muito rápido e sútil.

> O jquery e o bootstrap para auxiliar na estilização das páginas e interações de elementos nas mesma para dar mais usabilidade à aplicação.

> O banco escolhido foi o postgresql por open source, tem uma comunidade enorme e ativa pra ajudar a corrigir possiveis erros de implementação.

### Instalação

Clone o projeto desse repositorio, e instale as gems e dependências necessarias.

```sh
$ git clone git@github.com:randhson/projects.git
$ cd projects
$ bundle
```

Crie o banco de dados e popule o mesmo com as tabelas requeridas.

```sh
$ rake db:create
$ rake db:migrate
```
Após essas etapas inicie o rails server, para colocar sua aplicação online.
```sh
$ rails s
```
Agora é só abrir seu navegador e acessar a url abaixo.

```sh
127.0.0.1:3000
```

