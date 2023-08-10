# Banco de Talentos
Desafio/exemplo em delphi7 de um crud com OO e Herança

Esse projeto tem o objetivo de demonstrar um crud em delphi7 usando recursos nativo e aplicando tecnicas de Orientação à Objetos e Herança.

Apesar do projeto contemplar alguns tratamentos de regras de negócios e layout, o foco é demonstrar uma forma de implementação do crud fazendo uso de OO e Herança combinados com a praticidade do desenvolvimento visual do delphi.

- Como banco de dados foi utilizado o recurso de persistência do ClientDataSet como xml, dispensando assim a necessidade conexão com um SGBD nesse exemplo.
- Foram utilizados DataModules para definição de classes de entidades. Cada entidade do banco é visualmente definida em um DM que é utilizado como classe para dar vida aos objetos de acesso aos dados.
- Essas entidades herdam de uma classe (DataModule) que implementa as regras de acesso e gerenciamento de dados comum a qualquer crud.
- Para os forms também foi utilizada herança para que propriedades visuais sejam propagadas para toda aplicação de forma simples e centralizada.
- Os forms de cadastro de empresas, cargos e pessoas herdam de um form (FCadBase) que implementa o uso das entidades abstraindo e simplificando.

  Por muitos anos trabalhei com delphi realizando implementações nesse formato que me geraram ganhos de produtivdade e facilidade de manutenção de código. Inclusive em aplicações mobile nas versões mais recentes do delphi.

Obs.: 
- Esse código foi escrito do zero e com o intúito de servir como exemplo e ser de fácil compreensão. Melhorias são necessárias e devem ser realizadas para se aplicar em produção de modo que seja eficaz como se propõe. o tempo de desenvolvimento desse exemplo foi de aproximadamente 8h.
- Comentários de código serão adicionados posteriormente.
