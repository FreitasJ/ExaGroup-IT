-- NOTAS DE LA VERSIÓN
-- Versión: 1.0
-- Fecha versión: 15/4/2018
-- Autor de la versión: Jean Freitas
-- Observacion:
-- Creación del rol para la BD ExaServiciosIT

CREATE ROLE "AdminExaServiciosIT" LOGIN ENCRYPTED PASSWORD 'md5a7042adfd7e1cf10ce59d5b3db12f8dd'
  SUPERUSER CREATEDB CREATEROLE REPLICATION
   VALID UNTIL 'infinity';
