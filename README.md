# Aplicacion para la libreta militar
[Documentacion](https://jspaeza.github.io/Ingesoft-2/)

Todos los cambios que se hagan, deben estar en la rama *develop*, por lo tanto antes de comenzar a trabajar cambiarse a la rama *develop*.
`git checkout develop`

## Versiones a usar

* Rails version: 5.2.3  (verificar version *`rails -v`*)
* Ruby version: 2.5.1   (verificar version *`ruby -v`*) 
  
  >Nota: Para instalar Ruby y Rails, seguir el siguiente [tutorial](https://gorails.com/setup/ubuntu/18.04), recuerden instalar las versiones correspondientes.

## Comandos
Los siguientes comandos deben ser ejecutados dentro de la carpeta del proyecto.
* **`bundle install`**: Instala las dependencias especificadas en el Gemfile. Se debe correr este comando siempre que se añade una nueva gema al *Gemfile*, tambien cuando se hace `git clone` y `git pull`.
* **`rails s -p 4200`**: Corre el servidor local. el flag *`-p`* permite especificar el puerto en el que se va a correr el servidor, en este caso se utiliza el puerto `4200` ya que la aplicacion de React utiliza por defecto el puerto `3000`. Abrir [http://localhost:4200](http://localhost:4200) para ver en el navegador.
  >Nota: Se recomienda usar el navegador de Firefox debido a que muestra de mejor manera las respuestas de peticiones en formato json

## Tutoriales
* [Videos de ruby on Rails](https://drive.google.com/drive/folders/142-C7EJwuQdSCUuxz6RZ9rN-MHPNdJDt?usp=sharing)
