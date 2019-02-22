% profesion te da verdadero le pasas un nombre de una de las siguientes personas
profesion(jardinera).
profesion(florista).
profesion(disenadora).
profesion(directoraDeOrquesta).

% persona te da verdadero si le pasas un nombre de una de las siguientes personas
persona(luisa).
persona(nelida).
persona(maria).
persona(clara).

% noPuedeTrabajar da verdadero si le pasas el nombre de una persona y la profesion
% que esta no puede llevar a cabo

%  Clara es violentamente alérgica a las plantas. Por lo tanto no puede hacer algo relacionado.
noPuedeTrabajar(clara,florista).
noPuedeTrabajar(clara,jardinera).
%  La jardinera, la diseñadora de modas y Nélida no se conocen entre sí. Por lo tanto nelida no es ninguna de ellas.
noPuedeTrabajar(nelida,jardinera).
noPuedeTrabajar(nelida,disenadora).
% A María y Luisa les gusta solamente la música rock. Por lo tanto, no pueder ser directoras de orquesta.
noPuedeTrabajar(maria,directoraDeOrquesta).
noPuedeTrabajar(luisa,directoraDeOrquesta).
%  Luisa y la florista comparten el departamento. Por lo que no son la misma persona.
noPuedeTrabajar(luisa,florista).

% puedeTrabajar da verdadero si le pasas el nombre de una persona y la profesion
% que esta SI puede llevar a cabo
puedeTrabajar(Persona,Profesion):-
  % Si no no puedes hacer algo significa que si puedes hacerlo, dos negativos dan 1 positivo.
  not(noPuedeTrabajar(Persona,Profesion)).

% combinacionDeProfesiones da verdadero si le pasas una combinacion de 4 personas y  4 profesiones
% para las cuales cada persona puede hacer su profesion y son todas distintas entre si (las personas y las profesiones)
combinacionDeProfesiones(
% Definimos las variables relevantes a la funcion
Persona1,Profesion1,
Persona2,Profesion2,
Persona3,Profesion3,
Persona4,Profesion4
):-
  % Nos aseguramos que las 4 variables Persona1-4 ocupan tener el nombre de una persona
  persona(Persona1),persona(Persona2),persona(Persona3),persona(Persona4),
  % Las 4 personas ocupan ser distintas entre si
  dif(Persona1,Persona2,Persona3,Persona4),
  % Nos aseguramos que las 4 variables Profesion1-4 ocupan tener el nombre de una profesion
  profesion(Profesion1),profesion(Profesion2),profesion(Profesion3),profesion(Profesion4),
  % Verificamos que a cada persona le corresponde una profesion distinta
  dif(Profesion1,Profesion2,Profesion3,Profesion4),
  % Verificamos que para cada persona hay una profesion que puede trabajar
  puedeTrabajar(Persona1,Profesion1),
  puedeTrabajar(Persona2,Profesion2),
  puedeTrabajar(Persona3,Profesion3),
  puedeTrabajar(Persona4,Profesion4).


% Regla para saber si 4 variables son distintas.
dif(X,Y,Z,J):-
  X\=Y,
  X\=Z,
  X\=J,
  Y\=Z,
  Y\=J,
  Z\=J.
