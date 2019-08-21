# Consulta Constitucional Panamá

Este es un repositorio de código abierto dedicado a crear una plataforma de consulta ciudadana para las reformas a la Constitución de Panamá.

La idea es que los ciudadanos puedan opinar sobre cada artículo en la Constitución y dar sus sugerencias.

## Para empezar

Estas instrucciones buscan que puedas correr el programa en tu propia computadora localmente para development y como deploy la aplicación al production environment.

### Prerequisitos

Antes de empezar, debes tener esto instalado en tu computadora:

```
ruby 2.4.3
rails 5.2
postgresql 11.5
```

### Instalación

(1) Fork/clone este repository para poder ver el código localmente en tu computadora <br>

(2) En la terminal:

```
bundle
rails db:migrate db:seed
```

(3) Para crear el servidor local, corra `rails s` en el Terminal y deberías poder ver el sitio en `http://localhost:3000` en el navegador.

## Para manipular la base de datos

* En el Terminal:

```
$ rails console

  Article.all
  Subarticle.all
  Answer.all
  Article.subarticles
  ..cualquier método de [ActiveRecord](https://guides.rubyonrails.org/active_record_basics.html) basado en el esquema de la base de datos.
```

* En el navegador:

  Acceder a `http://localhost:3000/admin`. Aquí encontrará el Admin Dashboard. Para poder entrar, buscar las credenciales en el seed file (`app/db/seeds.rb`).
  Aquí podrá ver todas las respuestas y sugerencias que los usuarios han presentado sobre el documento.
  Esto funciona en producción de igual manera accediendo a `https://participa-panama.herokuapp.com`.

## Deployment

El servidor en producción está en Heroku actualmente bajo el sitio `http://participa-panama.herokuapp.com` <br>

De tener algún inconveniente en producción, empiece por correr `heroku logs` en el Terminal y revisar la documentación de [Heroku](https://devcenter.heroku.com/).


## Stack

* [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html) - MVC Ruby framework
* [StimulusJS](https://stimulusjs.org/) - JavaScript framework para front-end
* [Postgresql](https://www.postgresql.org/) - Base de datos
* [Fullstory](https://www.fullstory.com/) - Tracking
* [AppSignal](https://appsignal.com/) - Error Monitoring en producción


## Programadora

* **Juliette Chevalier** - [juliettech](https://github.com/juliet-tech)

[Contribuidores](https://github.com/juliet-tech/participacion-pma/graphs/contributors)

