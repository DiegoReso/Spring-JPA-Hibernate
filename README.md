# API REST de Pedidos de Produtos

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Este projeto consiste em uma API RESTful desenvolvida em Java utilizando o framework Spring Boot, o padrão de persistência JPA (Java Persistence API) e o Hibernate como implementação do JPA. A API permite o gerenciamento de pedidos de produtos, oferecendo funcionalidades para criar, consultar, atualizar e excluir pedidos.

## Tecnologias Utilizadas

* **Java:** Linguagem de programação principal.
* **Spring Boot:** Framework Java para desenvolvimento rápido de aplicações standalone e prontas para produção.
* **JPA (Java Persistence API):** Especificação da API Java para acessar, persistir e gerenciar dados entre objetos Java e um banco de dados relacional.
* **Hibernate:** Framework ORM (Object-Relational Mapping) que implementa a JPA, facilitando o mapeamento entre objetos Java e tabelas do banco de dados.
* **Maven:** Ferramenta de gerenciamento de dependências e build do projeto.
* **REST:** Arquitetura de software para construção de serviços web.
* **HTTP:** Protocolo de transferência de dados utilizado na comunicação da API.

## Funcionalidades da API

A API de Pedidos de Produtos oferece as seguintes funcionalidades:

* **Criação de Pedidos:** Permite registrar novos pedidos no sistema, especificando os produtos desejados e outras informações relevantes.
    * **Endpoint:** `POST /orders`
    * * **Resposta (JSON):** Retorna o pedido criado com um ID único.

* **Consulta de Pedidos:** Permite buscar informações de um pedido específico através do seu ID.
    * **Endpoint:** `GET /orders/{id}`
    * **Parâmetro:** `{id}` - ID do pedido a ser consultado.
    * **Resposta (JSON) - Exemplo:**
        ```json
        {
            "id": 1,
            "moment": "2025-05-13T19:00:00Z",
            "orderStatus": "WAITING_PAYMENT",
            "client": {
                "id": 1,
                "name": "João Silva",
                "email": "joao.silva@email.com",
                "phone": "2199999999",
                "password": "senha123"
            },
            "items": [
                {
                    "quantity": 2,
                    "price": 2299.9,
                    "subTotal": 4599.8
                },
                {
                    "quantity": 1,
                    "price": 59.9,
                    "subTotal": 59.9
                }
            ],
            "payment": {
                "id": 1,
                "moment": "2025-05-13T19:00:00Z"
            },
            "total": 4659.7
        }
        ```

* **Listagem de Pedidos:** Permite obter uma lista de todos os pedidos registrados no sistema.
    * **Endpoint:** `GET /orders`
    * **Resposta (JSON):** Retorna um array de objetos representando os pedidos.

* **Atualização de Pedidos:** Permite modificar informações de um pedido existente através do seu ID.
    * **Endpoint:** `PUT /orders/{id}`
    * **Parâmetro:** `{id}` - ID do pedido a ser atualizado.
    * **Corpo da Requisição (JSON):** Contém os campos do pedido a serem atualizados.
    * **Resposta (JSON):** Retorna o pedido atualizado.

* **Exclusão de Pedidos:** Permite remover um pedido do sistema através do seu ID.
    * **Endpoint:** `DELETE /orders/{id}`
    * **Parâmetro:** `{id}` - ID do pedido a ser excluído.
    * **Resposta:** Retorna um código de status HTTP indicando o sucesso da operação.

## Como Executar a Aplicação

1.  **Pré-requisitos:**
    * Java Development Kit (JDK) instalado.
    * Maven instalado.
    * Um banco de dados (ex: MySQL, PostgreSQL, H2) configurado.

2.  **Clonar o Repositório:**
    ```bash
    git clone [https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content)
    cd [nome do seu repositório]
    ```

3.  **Configurar o Banco de Dados:**
    * Abra o arquivo `src/main/resources/application.properties` ou `application.yml`.
    * Configure as propriedades de acesso ao seu banco de dados (URL, usuário, senha, driver). Exemplo para MySQL:
        ```properties
        spring.datasource.url=jdbc:mysql://localhost:3306/seubanco
        spring.datasource.username=seuusuario
        spring.datasource.password=suasenha
        spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
        spring.jpa.hibernate.ddl-auto=update
        ```
        * `spring.jpa.hibernate.ddl-auto` define como o Hibernate lida com o schema do banco de dados (ex: `create-drop`, `update`, `none`).

4.  **Executar a Aplicação:**
    * Utilize o Maven para executar a aplicação Spring Boot:
        ```bash
        mvn spring-boot:run
        ```
    * A API estará disponível por padrão na porta `8080`.

## Como Utilizar a API

Você pode interagir com a API utilizando ferramentas como `curl`, Postman, Insomnia ou qualquer outra ferramenta de cliente HTTP.

**Examples:**

* **Criando pedido com curl:**
    ```bash
    curl -X POST -H "Content-Type: application/json" -d '{
      "client": {
        "name": "John Doe",
        "email": "john.doe@example.com",
        "phone": "0123456789",
        "password": "mypassword"
      },
      "items": [
        {
          "product": "Product A",
          "quantity": 1,
          "unitPrice": 99.99
        },
        {
          "product": "Product B",
          "quantity": 3,
          "unitPrice": 19.90
        }
      ]
    }' http://localhost:8080/orders
    ```

* **Consultar pedido com curl:**
    ```bash
    curl http://localhost:8080/orders/1
    ```
