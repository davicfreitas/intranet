## Intranet 

Essa é uma intranet simples criada com Rails e Materialize

### Pré-requisitos:

* ImageMagick (https://www.imagemagick.org)

```
sudo apt-get update
sudo apt-get install imagemagick libmagickwand-dev
```

### Instalação:

Este projeto utiliza o Postgres como banco de dados, primeiro você precisa alterar a configuração do banco de dados no arquivo: config/database.yml.example

```
vim config/database.yml.example (faça as alterações e salve o arquivo)

cp config/database.yml.example config/database.yml (crie o aquivo de configuração database.yml)
```

Crie o banco de dados e suas migrações

```
rails db:create
rails db:migrate
rails db:seed (isso irá criar alguns posts de exemplo)
```
### Uso:

* Após iniciar seu projeto, você precisa criar um usuário para ter acesso à área de posts. Após fazer login, o menu estará disponível.


## Produzido com:
* [Devise](https://github.com/plataformatec/devise)
* [Ckeditor](https://ckeditor.com/)
* [MaterializeCss](https://materializecss.com/)
* [PaperClip](https://github.com/thoughtbot/paperclip)
