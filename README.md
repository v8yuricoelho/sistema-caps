# Sistema Digital CAPS
<p align="center">Um sistema em construção para auxiliar no gerenciamento de operações relacionadas aos dados das unidades do CAPS (Centro de Atenção Psicossocial) do município de Encruzilhada - BA e seus distritos. </p>

<!--ts-->
  * Pré-requisitos
      * **Ruby 2.6.4**.
      * **Rails 6**
      * **PostgreSQL**

  * Instruções
      * Primeiramente, clone o projeto com `https://github.com/v8yuricoelho/sistema-caps`;
      * Instale as dependências do projeto executando `bundle install` na pasta do mesmo;
      * Defina seu nome de usuário e senha Postgres no arquivo `config/database.yml`;
      * Após setar usuário e senha, crie o banco de dados com `rails db:create`;
      * Rode as migrações `rails db:migrate`;
      * Povoe o ambiente de desenvolvimento executando `rails db:seed` para testar a aplicação.
  
  * Tests
    * Rode os testes com `rspec`.

  * Comentários do Dev
    * Este é um projeto pessoal o qual iniciei em 2019, logo após ingressar nos estudos de Ruby on Rails, ferramenta na qual trabalho até hoje;
    * A idéia era aprender, gerar portfólio e uma aplicação de valor que ajudaria pessoas próximas;
    * Voltei a trabalhar em cima deste projeto recentemente, corrigindo algumas coisas, realizando refatorações e implementando testes, que não existiam;
    * Não tenho qualquer perspectiva de entrega até o devido momento.
    * As views foram implementadas puramente com HTML, CSS, Bootstrap e algumas bibliotecas auxiliares, utilizando códigos Ruby embarcados. Nelas também estão detalhes a serem implementados e refatorados.
<!--te-->
