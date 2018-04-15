-- NOTAS DE LA VERSIÓN
-- Versión: 1.0
-- Fecha versión: 15/04/2018
-- Autor de la versión: Jean Freitas
-- Observaciones:
-- Instrucciones para la creación de la BD ExaServiciosIT

I. NOTAS REVISION

Todos los pasos aquí indicados fueron probados utilizando la herramienta SQLSHELL de Postgressql

II. INSTALACIÓN del MANEJADOR de la BD Postgressql

	1. Descargar PostgreSQL:

		Ej: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads (Puede variar).
		
		Instalar con la configuración por defecto y acordarse de la contraseña usada al instalar el manejador.

	1. Ingresar Consola SQLSHELL:

		Inicio > PostgreSQL > SQLSHELL.

		Server [localhost]: localhost
		Database [postgres] : postgres
		Port [5432] : 5432
		Username [postgres] : postgres
		Contraseña: (contraseña colocada al instalar el postgress)
		ENTER
	
	2. CREAR ROL para la BD de ExaServiciosIT:
	
		Ejecutar Scripts ExaServicios_create_role.sql 
		
		Ej: \i 'D:/Dev/ExaServiciosIT/ESIT_Database/ExaServiciosIT_create_role.sql' (Estar pendiente de "\" en Windows, el path tiene que quedar con "/").

	3. Crear Tablespace en BD
	
		Ejecutar Script ExaServiciosIT_create_tablespace.sql 
		Nota: Crear carpeta de tablespace en una ubicación que tenga toda la permisologia y editar el archivo para colocar la ruta de su maquina.

		Ej: \i 'D:/Dev/ExaServiciosIT/ESIT_Database/ExaServiciosIT_create_tablespace.sql'
	
	4. Crear Base de Datos
	
		Ejecutar Script ExaServiciosIT_create_database.sql 
		
		Ej: \i 'D:/Dev/ExaServiciosIT/ESIT_Database/ExaServiciosIT_create_database.sql'
		
III. INSTALACIÓN BD ExaServiciosIT Postgressql

	1. Ingresar Consola SQLSHELL con Datos:
		Server [localhost]: localhost
		Database [postgres] : ExaServiciosIT
		Port [5432] : 5432
		Username [postgres] : AdminExaServicios
		Contraseña: (contraseña colocada al instalar el postgress)
		ENTER
		
	2. Crear Esquema BD de la Aplicación ExaServiciosIT
	
		Ejecutar Script ExaServiciosIT_create_schema.sql 
		
		Ej: \i 'D:/Dev/ExaServiciosIT/ESIT_Database/ExaServiciosIT_create_schema.sql'
		
	3. Ejecutar la Creación de las Tablas, Indices , Claves Primarias y Claves Foraneas
	
		Ejecutar Script ExaServiciosIT_ddl.sql 
		
		Ej: \i 'D:/Dev/ExaServiciosIT/ESIT_Database/ExaServiciosIT_ddl.sql'
	
	4. Asignar Permisos y Ubicación de las Tablas Creadas
	
		Ejecutar Script ExaServiciosIT_grants.sql 
		
		Ej: \i 'D:/Dev/ExaServiciosIT/ESIT_Database/ExaServiciosIT_grants.sql'
		
	5. Crear las Sequencias
	
		Ejecutar Script ExaServiciosIT_create_sequences.sql 
		
		Ej: \i 'D:/Dev/ExaServiciosIT/ESIT_Database/ExaServiciosIT_create_sequences.sql'
	
	
	
	