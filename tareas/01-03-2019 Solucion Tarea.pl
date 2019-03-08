% Tarea
% Metodo que imprima "Hola mundo" o "Adios mundo" 10 veces alternadamente
% ejemplo:
% "Hola mundo","Adios mundo", "Hola mundo", "Adios mundo" ...

% SOLUCION
imprimirHola(X):-
  X=0.
imprimirHola(X):-
  ModuloX is mod(X,2),
  ModuloX = 0,
  write("Hola mundo"),
  nl,
  X2 is X - 1,
  imprimirHola(X2).

imprimirHola(X):-
  write("Adios mundo"),
  nl,
  X2 is X - 1,
  imprimirHola(X2).
