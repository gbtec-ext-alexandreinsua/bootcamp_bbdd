# Instrucciones

## Objetivo

El objetivo es compartir las soluciones del ejercicio de ddbb en común. Para ello cada persona va a modificar el enunciado en su rama, copiando las soluciones y crear una pull request que va a revisar el equipo que creo el enunciado.

## Portavoces de grupo

Cada grupo debe nombrar un portavoz para comunicarse entre grupos.

## Mecánica

1. La clase reparte en grupos.
2. Cada grupo se reparte los 12 ejercios entre sus miembros. Por tanto, cada persona tendrá 3 ó 4 ejercicios que subir.
3. Cada persona, en su rama, copia sus soluciones y las sube al repositorio.
4. Después crea una pull request para que la revise el otro equipo.
5. Cuando estén listas las PR request se avisa al otro equipo y le pasa el link de cada una de ellas.
6. El equipo que propuso el enunciado revisa las pull requests.

   - Para cada ejercicio completado en cada pull request, si la respuesta no es correcta, debe agregar un comentario diciendo que la respuesta no es correcta y que explique el resultado esperado.
   - Si las respuesta es correcta, debe comentar si hay alguna respuesta alternativa y dar una pista.
   - Cuando el grupo acaba de revisar la PR, debe avisar al equipo que responde.

7. La PR vuelve al equipo inicial para que satisfaga los comentarios.

   - Si un ejercicio tiene un comentario de error, hay que modificarlo hasta dé el resultado correcto.
   - Si un ejercicio está correcto, pero tiene soluciones alternativas hay que agregarlas, p. ej.:

   ```sql
   /*
   1. Enunciado del ejercicio
   */
   SELECT * FROM  DIRECTORS WHERE NAME  = 'Sergio Leone';

   /*
   1b. Solución alternativa
   */
   SELECT * FROM  DIRECTORS WHERE NAME LIKE 'Sergio Leone';
   ```

    - Una vez agregados hay que subirlos de nuevo al repositorio y avisar al equipo redactamente para que vuelva a revisar la PR.