# UV-BD-PARCIAL1

En el desarrollo del parcial se utilizo comandos como:

  docker run --name ulimar -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14
  (Iniciar un contenedor con el motor de bases de datos Postgres version 14)
  
  docker run --rm -p 5050:80 --link ulimar:ulimar -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d dpage/pgadmin4
  (Iniciar contenedor con la herramienta PGAdmin_V4)

Configuramos y conectamos el servidor a la base de datos usando las credenciales que definimos en los comandos anteriores.

Creamos las instrucciones del DDL y DML para dar solución a un sistema de generación de de turnos segun lo requerido por el cliente, en este caso, por LiMar.

Se agregaron mas relaciones para cumplir con la normalización y mas registros en la tabla usuario para mantener la logica coherente.
