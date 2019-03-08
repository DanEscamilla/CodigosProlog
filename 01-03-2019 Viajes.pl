% Alejandro no utiliza el coche  ya que este acompana a benito que no va en avion
% Andres viaje en avion
% Si carlos no va acompanado de dario ni hace uso del avion
% En que medio de transporte llega a su destino cada pareja
persona(alejandro).
persona(carlos).
persona(andres).
persona(benito).
persona(dario).
persona(tomas).

transporte(avion).
transporte(tren).
transporte(coche).


parejas(
  Persona1,Persona2,Transporte1,
  Persona3,Persona4,Transporte2,
  Persona5,Persona6,Transporte3
  ):-
  viajanJuntosEn(Persona1,Persona2,Transporte1),
  viajanJuntosEn(Persona3,Persona4,Transporte2),
  viajanJuntosEn(Persona5,Persona6,Transporte3),
  diff(Persona1,Persona2,Persona3,Persona4,Persona5,Persona6),
  diff(Transporte1,Transporte2,Transporte3),nl.

diff(A,B,C):-
  A\=B,A\=C,
  B\=C.
diff(A,B,C,D,E,F):-
  A\=B,A\=C,A\=D,A\=E,A\=F,
  B\=C,B\=D,B\=E,B\=F,
  C\=D,C\=E,C\=F,
  D\=E,D\=F,
  E\=F.

viajanJuntosEn(ParA,ParB,Transporte):-
  persona(ParA),persona(ParB),
  % viajanJuntos(ParA,ParB), % para version simplificada
  viajanJuntosBi(ParA,ParB),
  viajaEn(ParA,Transporte),
  viajaEn(ParB,Transporte).

% ----------------------------------------------
% Version simplificada (haciendo la logica nosotros mismos)
% ----------------------------------------------

% viajanJuntos(alejandro,benito).
% viajanJuntos(carlos,tomas).
% viajanJuntos(andres,dario).
%
% viajaEn(benito,tren).
% viajaEn(alejandro,tren).
% viajaEn(carlos,coche).
% viajaEn(tomas,coche).
% viajaEn(andres,avion).
% viajaEn(dario,avion).

% ----------------------------------------------
% Version completa
% ----------------------------------------------

noViajaEn(alejandro,coche).
noViajaEn(benito,avion).
noViajaEn(carlos,avion).

viajaSoloEn(andres,avion).

viajaEn(X,Y):-viajaSoloEn(X,Y).
viajaEn(X,Y):-
  persona(X),
  transporte(Y),
  not(viajaSoloEn(X,_)),
  not(noViajaEn(X,Y)).

noViajanJuntos(carlos, dario).
noViajanJuntosBi(X,Y):-noViajanJuntos(Y,X).
noViajanJuntosBi(X,Y):-noViajanJuntos(X,Y).

viajanSoloJuntos(alejandro,benito).
viajanSoloJuntosBi(X,Y):-viajanSoloJuntos(X,Y).
viajanSoloJuntosBi(X,Y):-viajanSoloJuntos(Y,X).

viajanJuntos(X,Y):-viajanSoloJuntosBi(X,Y).
viajanJuntos(X,Y):-
  persona(X),persona(Y),
  X\=Y,
  not(viajanSoloJuntosBi(X,_)),
  not(noViajanJuntosBi(X,Y)),
  viajaEn(X,T),viajaEn(Y,T).

viajanJuntosBi(X,Y):-viajanJuntos(X,Y),viajanJuntos(Y,X).
