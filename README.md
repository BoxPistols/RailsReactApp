# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

---

# My Docs

## GitBook/Rails

https://atit.gitbook.io/rails/

## DB Change:

https://atit.gitbook.io/rails/dbnorais6

---

# QA-Servrice

## Create Controller

`rails g controller questions index show new edit`

```ruby
create app / controllers / questions_controller.rb

route get 'questions/index'
get 'questions/show'
get 'questions/new'
get 'questions/edit'

invoke erb

create app / views / questions
create app / views / questions / index.html.erb
create app / views / questions / show.html.erb
create app / views / questions / new.html.erb
create app / views / questions / edit.html.erb

invoke test_unit
create test / controllers / questions_controller_test.rb

invoke helper
create app / helpers / questions_helper.rb
invoke test_unit

invoke assets
invoke scss
create app / assets / stylesheets / questions.scss
```

routes.rb

```ruby
get 'questions/index'
get 'questions/show'
get 'questions/new'
get 'questions/edit'
```
