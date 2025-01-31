# Blog Pessoal

## Descrição
Um blog pessoal desenvolvido em Ruby on Rails com sistema de autenticação utilizando Devise. Permite criar, editar e gerenciar posts, além de um painel administrativo para o autor do blog.

## Requisitos do Sistema
- Ruby 3.2.0
- Rails 7.0.0
- PostgreSQL 14.0

## Configuração do Ambiente

### 1. Instalação das Dependências
```
git clone git@github.com:luizarodrigues98/blog-luiza.git
cd blog-luiza
```

### 2. Configuração do Banco de Dados
```
rails db:create
rails db:migrate
rails db:seed
```
### 3. Iniciar o servidor
```
rails s
```
O blog estará disponível em `http://localhost:3000`

## Funcionalidades
- Sistema de autenticação completo (login, registro, recuperação de senha)
- Criação e edição de posts
- Categorização de posts por tags
- Comentários em posts
- Painel administrativo para gerenciamento de conteúdo
- Interface responsiva

## Acessando o Sistema

### Usuário Admin Padrão
- Email: admin@exemplo.com
- Senha: 123456

### Áreas do Sistema
- `/` - Página inicial com lista de posts
- `/posts` - Lista de todos os posts
- `/posts/new` - Criar novo post (requer autenticação)
