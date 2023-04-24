/**
* Notas
* https://www.postgresql.org/docs/9.6/lo-funcs.html
* https://www.postgresql.org/docs/9.6/functions-binarystring.html
* https://www.enterprisedb.com/postgres-tutorials/how-work-blobs-when-using-postgresql-and-php
* Llamar al campo de int_parametros oidlog
*
* https://forum.phalcon.io/discussion/12717/como-leer-un-large-object-de-postgresql
* https://www.php.net/manual/es/function.pg-lo-read
*
* https://www.php.net/manual/es/function.fopen.php
* https://www.php.net/manual/es/wrappers.php
* https://www.php.net/manual/es/function.tempnam.php
* https://www.php.net/manual/es/function.tmpfile.php
* https://stackoverflow.com/questions/2987265/using-a-php-memory-wrapper-causes-errors
*
* https://elmah.io/tools/base64-image-encoder/ (Convertir imagen a Base64)
* https://codebeautify.org/base64-to-image-converter (Convertir Base64 a imagen)
*/

/* Guardamos en base de datos */
SELECT lo_from_bytea(0, decode('CONTENIDO_BASE64', 'base64'));

/* Insertamos en int_parametros */
INSERT INTO public.int_parametros(par_nombre, par_valor, id) VALUES ('oidlog', '82406', NULL);
SELECT * FROM int_parametros;
UPDATE int_parametros SET par_valor = '75913' WHERE par_nombre = 'oidlog';

/* Consultamos large object */
SELECT lo_get(82406);
http://172.18.8.12/sistemaweb/logo.php?oid=82406
