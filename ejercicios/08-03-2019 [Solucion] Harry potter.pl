estaAIzqDe(parvati_patil,lavander_brown).
estaAIzqDe(lavander_brown,neville_longbottom).
estaAIzqDe(neville_longbottom,alicia_spinnet).
estaAIzqDe(alicia_spinnet,fred_weasley).
estaAIzqDe(fred_weasley,george_weasley).
estaAIzqDe(george_weasley,lee_jordan).
estaAIzqDe(lee_jordan,dennis_creevey).
estaAIzqDe(dennis_creevey,dean_thomas).
estaAIzqDe(ginny_weasley,dean_thomas).
estaAIzqDe(angelina_johnson,ginny_weasley).
estaAIzqDe(seamus_finnigan,angelina_johnson).
estaAIzqDe(colin_creevey,angelina_johnson).
estaAIzqDe(harry_potter,colin_creevey).
estaAIzqDe(hermione_granger,harry_potter).
estaAIzqDe(ron_weasley,hermione_granger).
estaAIzqDe(natalie_mcdonald,ron_weasley).
estaAIzqDe(katie_bell,natalie_mcdonald).
estaAIzqDe(katie_bell,parvati_patil).

estaADerDe(X,Y):-estaAIzqDe(Y,X).

enseguidaDe(X,Y):-estaADerDe(X,Y).
enseguidaDe(X,Y):-estaAIzqDe(X,Y).

enMedioDe(X,Y,Z):-
  enseguidaDe(X,Z),
  enseguidaDe(X,Y),
  Y\=Z.

estaADerechaRecursivo(Derecha,Izquierda):-
  % write("Condicion de termino:"),nl,
  % write("Derecha:"+Derecha),nl,
  % write("Izquierda:"+Izquierda),nl,nl,
  estaADerDe(Derecha,Izquierda).
estaADerechaRecursivo(Derecha,Izquierda):-
  estaADerDe(Derecha,DerechaIntermedia),
  % write("Condicion recursiva:"),nl,
  % write("Derecha:"+Derecha),nl,
  % write("Izquierda:"+Izquierda),nl,
  % write("DerechaIntermedia:"+DerechaIntermedia),nl,nl,
  estaADerechaRecursivo(DerechaIntermedia,Izquierda).

estaAIzquierdaRecursivo(Derecha,Izquierda):-estaADerechaRecursivo(Izquierda,Derecha).


% Solucion 1
% estaEntre(Medio,ExtremoIzq,ExtremoDer):-
%   estaAIzquierdaRecursivo(ExtremoIzq,Medio),
%   estaADerechaRecursivo(ExtremoDer,Medio).



% Solucion 2 (este creo deberia funcionar para le de la rueda tambien)
% La idea es que vas checando si la persona "en medio",
% Esta a la derecha(inmediata) del extremo izquierdo.
% Si no es el caso, vas moviendo el izquierdo hacia la derecha
% Cuando ExtremoIzq y ExtremoDer son iguales, no encontro solucion.
estaEntre(Medio,ExtremoIzq,ExtremoDer):-
  % Si ExtremoDer y ExtremoIzq son iguales, no encontro una solucion.
  % Ya no hay nadie entre los extremos.
  ExtremoDer\=ExtremoIzq,
  % El medio, esta a la derecha del extremo izq.
  estaADerDe(Medio,ExtremoIzq).
estaEntre(Medio,ExtremoIzq,ExtremoDer):-
  ExtremoDer\=ExtremoIzq,
  % mueve el extremo izq hacia la derecha,
  % va cerrando el espacio entre los extremos
  % (La variable de control se mueve hacia la condicion de fin)
  estaADerDe(ExtremoIzqIntermedio,ExtremoIzq),
  estaEntre(Medio,ExtremoIzqIntermedio,ExtremoDer).
