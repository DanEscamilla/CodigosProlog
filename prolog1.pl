profesion(jardinera).
profesion(florista).
profesion(disenadora).
profesion(directoraDeOrquesta).

persona(luisa).
persona(nelida).
persona(maria).
persona(clara).

alergica(clara,plantas).

noPuedeTrabajar(clara,florista).
noPuedeTrabajar(clara,jardinera).
noPuedeTrabajar(nelida,jardinera).
noPuedeTrabajar(nelida,disenadora).
noPuedeTrabajar(maria,directoraDeOrquesta).
noPuedeTrabajar(luisa,directoraDeOrquesta).
noPuedeTrabajar(luisa,jardinera).

puedeTrabajar(Persona,Profesion):-
  not(noPuedeTrabajar(Persona,Profesion)).

combinacionDeProfesiones(
Persona1,Profesion1,
Persona2,Profesion2,
Persona3,Profesion3,
Persona4,Profesion4):-
  persona(Persona1),persona(Persona2),persona(Persona3),persona(Persona4),
  dif(Persona1,Persona2,Persona3,Persona4),
  profesion(Profesion1),profesion(Profesion2),profesion(Profesion3),profesion(Profesion4),
  puedeTrabajar(Persona1,Profesion1),
  puedeTrabajar(Persona2,Profesion2),
  puedeTrabajar(Persona3,Profesion3),
  puedeTrabajar(Persona4,Profesion4),
  dif(Profesion1,Profesion2,Profesion3,Profesion4).

dif(X,Y,Z,J):-
  X\=Y,
  X\=Z,
  X\=J,
  Y\=Z,
  Y\=J,
  Z\=J.


% noSeConocen(jardinera,disenadora)

% compartenDepartamento()
%
