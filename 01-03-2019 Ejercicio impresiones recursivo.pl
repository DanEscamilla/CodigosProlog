% Metodo que imprima 10 veces "Hola mundo"
% Funcion para imprimir: write() y nl para saltar linea

% Este regresa verdadero
imprimirHola(X):-
  X=0.
imprimirHola(X):-
  X>0,
  write("Hola mundo"),
  nl,
  X2 is X - 1,
  imprimirHola(X2).

% Este regresa falso
imprimirHola(X):-
  X>0,
  write("Hola mundo"),
  nl,
  X2 is X - 1,
  imprimirHola(X2).

% Tarea
% Metodo que imprima "Hola mundo" o "Adios mundo" 10 veces alternadamente
% ejemplo:
% "Hola mundo","Adios mundo", "Hola mundo", "Adios mundo" ...
