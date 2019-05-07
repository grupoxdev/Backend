# Aplicacion para la libreta militar
[Documentacion](https://grupoxdev.github.io/Ingesoft-2/)

Todos los cambios que se hagan, deben estar en su rama personal, por lo tanto antes de comenzar a trabajar cambiarse a su rama personal. `git checkout nombre_usuario_unal`.
>Nota: Para crear su rama personal, si todavia no la han creado, utilicen el comando `git checkout -b nombre_usuario_unal`. Para crear la rama personal(que se creo localmente) en GitHub deben hacer el siguiente push(solo la primera vez) `git push --set-upstream origin nombre_usuario_unal`.

## Versiones a usar

* Rails version: 5.2.3  (verificar version *`rails -v`*)
* Ruby version: 2.5.1   (verificar version *`ruby -v`*) 
  
  >Nota: Para instalar Ruby y Rails, seguir el siguiente [tutorial](https://gorails.com/setup/ubuntu/18.04), recuerden instalar las versiones correspondientes.

## Comandos
Los siguientes comandos deben ser ejecutados dentro de la carpeta del proyecto.
* **`bundle install`**: Instala las dependencias especificadas en el Gemfile. Se debe correr este comando siempre que se añade una nueva gema al *Gemfile*, tambien cuando se hace `git clone` y `git pull`.
* **`sh reset_db.sh`**: Corre el bash que se creo para resetear los datos de la base de datos, ademas ejecuta el archivo seeds y genera el annotate de los modelos. Correr siempre que se hace `git clone`.
  >Nota: Este procedimiento de reiniciar la base de datos, puede demorar un tiempo.
* **`rails s -p 4200`**: Corre el servidor local. el flag *`-p`* permite especificar el puerto en el que se va a correr el servidor, en este caso se utiliza el puerto `4200` ya que la aplicacion de React utiliza por defecto el puerto `3000`. Abrir [http://localhost:4200](http://localhost:4200) para ver en el navegador.
  >Nota: Se recomienda usar el navegador de Firefox debido a que muestra de mejor manera las respuestas de peticiones en formato json