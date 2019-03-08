% Condicion de termino:
  % Caso en el que se termina la recursividad (No se llama a si mismo)
  % Se determina en base a la variable de control (Que cambia en el caso recursivo)

% Variable(s) de control:
  % Es la que determina cuando termina la recursividad
  % Necesita estar cambiando en el caso recursivo
  % Que representa la variable

% Caso(s) recursivo:
  % Se manda a llamar a si mismo ()
  % La variable de control cambia (Se acerca a la condicion de termino)

% Identificar 3 aspectos
% 1.- Variable(s) de control
% 2.- Condicion de termino
% 3.- Caso(s) recursivo(Como cambia la variable de control en caso recursivo)

% NOTA: utilizar "write()" para ver como trabaja el metodo que estas haciendo.

imprimirHola(ImpresionesFaltantes):-
  write("Entro a Condicion Termino, ImpresionesFaltantes:"),write(ImpresionesFaltantes),nl,
  ImpresionesFaltantes=0,
  write("Si cumplio la condicion de termino."),nl,nl.

imprimirHola(ImpresionesFaltantes):-
  write("Entro a Caso recursivo 1, ImpresionesFaltantes:"),write(ImpresionesFaltantes),nl,
  ModuloImpresionesFaltantes is mod(ImpresionesFaltantes,2),
  ModuloImpresionesFaltantes = 0,
  write("Si cumplio la condicion."),nl,
  write("Hola mundo"),nl,nl,
  ImpresionesFaltantes2 is ImpresionesFaltantes - 1,
  imprimirHola(ImpresionesFaltantes2).

imprimirHola(ImpresionesFaltantes):-
  write("Entro a Caso recursivo 2, ImpresionesFaltantes:"),write(ImpresionesFaltantes),nl,
  write("Adios mundo"),nl,nl,
  ImpresionesFaltantes2 is ImpresionesFaltantes - 1,
  imprimirHola(ImpresionesFaltantes2).
