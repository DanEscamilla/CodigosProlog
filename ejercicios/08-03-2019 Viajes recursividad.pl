enCarro(newYork,hamilton).
enCarro(hamilton,paris).
enCarro(valmont,roma).
enCarro(valmont,metz).
enTren(metz,frankfurt).
enTren(roma,frankfurt).
enTren(metz,paris).
enTren(roma,paris).
enAvion(frankfurt,bangkok).
enAvion(frankfurt,singapore).
enAvion(paris,losAngeles).
enAvion(bangkok,newYork).
enAvion(singapore,newYork).
enAvion(losAngeles,newYork).

% Haz una regla para saber si se puede viajar de Un A a un destino B (por cualquier medio)
% para viajeDirecto(newYork,hamilton), debe dar verdadero
% para viajeDirecto(newYork,losAngeles), debe dar falso


% Haz una regla para saber si se puede viajar llamada viajeIndirecto(A,B)
% para viajeIndirecto(newYork,losAngeles), debe dar verdadero
% para viajeIndirecto(newYork,roma), debe dar falso
