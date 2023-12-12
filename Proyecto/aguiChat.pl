% Llamamiento inicial
aguiChat:-	writeln('Hola, mi nombre es aguiChat, bienvenido Aqui encontraras 
                    informacion del club America y de Esclerosis multiple, 
					te ayudare con las dudas que tengas. Te recuerdo que todas 
					las entradas deben ser en minusculas'),
	readln(Input),
	aguiChat(Input),!.

    % despedidas

	aguiChat(Input):- Input == ['adios'],
	writeln('Adios, espero haberte ayudado.'), !.
	aguiChat(Input):- Input == ['Adios'],
	writeln('Adios, espero haberte ayudado.'), !.
	aguiChat(Input):- Input == ['Bye'],
	writeln('Adios, espero haberte ayudado.'), !.
	aguiChat(Input):- Input == ['bye'],
	writeln('Adios, espero haberte ayudado.'), !.

	aguiChat(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	aguiChat(Input1), !.

	% saludos
	template([hola, soy, s(_), '.'], ['Hola', 0 ], [2]).
	template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
	template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).
    template([hola, yo, soy, s(_), '.'], ['Hola', 0, espero, estes, teniendo, un, buen, dia], [3]).
    template([hola, pachonc, yo, soy, s(_), '.'], ['Hola', 0, '¿',eres, un, estudiante, del, tec, '?'], [4]). 

	% templates interactivos base
	template([te, gustan, las, s(_), '.'], [flagLike], [3]).
	template([te, gustan, los, s(_), '.'], [flagLike], [3]).
	template([eres, s(_), '.'], [flagIs], [1]).


    % templates de Esclerosis multiple
    template([esclerosis, multiple, '.'],['La esclerosis multiple (EM) es una enfermedad cronica del sistema nervioso central (SNC) que afecta el cerebro y la medula espinal. Es una enfermedad autoinmune, lo que significa que el sistema inmunologico del cuerpo ataca por error las celulas sanas del SNC, causando daño en la mielina, la capa protectora que rodea las fibras nerviosas. Esta alteracion en la mielina interfiere con la transmision normal de los impulsos nerviosos.'],[]).
	template([hablame, del, esclerosis, multiple, '.'],['La esclerosis multiple (EM) es una enfermedad cronica del sistema nervioso central (SNC) que afecta el cerebro y la medula espinal. Es una enfermedad autoinmune, lo que significa que el sistema inmunologico del cuerpo ataca por error las celulas sanas del SNC, causando daño en la mielina, la capa protectora que rodea las fibras nerviosas. Esta alteracion en la mielina interfiere con la transmision normal de los impulsos nerviosos.'],[]).
	template([que, sabes, del, dengue, '.'],['La esclerosis multiple (EM) es una enfermedad cronica del sistema nervioso central (SNC) que afecta el cerebro y la medula espinal. Es una enfermedad autoinmune, lo que significa que el sistema inmunologico del cuerpo ataca por error las celulas sanas del SNC, causando daño en la mielina, la capa protectora que rodea las fibras nerviosas. Esta alteracion en la mielina interfiere con la transmision normal de los impulsos nerviosos.'],[]).
	template([que, es, el, dengue, '.'],['La esclerosis multiple (EM) es una enfermedad cronica del sistema nervioso central (SNC) que afecta el cerebro y la medula espinal. Es una enfermedad autoinmune, lo que significa que el sistema inmunologico del cuerpo ataca por error las celulas sanas del SNC, causando daño en la mielina, la capa protectora que rodea las fibras nerviosas. Esta alteracion en la mielina interfiere con la transmision normal de los impulsos nerviosos.'],[]).
    template([cuentame, sobre, el, dengue, '.'],['La esclerosis multiple (EM) es una enfermedad cronica del sistema nervioso central (SNC) que afecta el cerebro y la medula espinal. Es una enfermedad autoinmune, lo que significa que el sistema inmunologico del cuerpo ataca por error las celulas sanas del SNC, causando daño en la mielina, la capa protectora que rodea las fibras nerviosas. Esta alteracion en la mielina interfiere con la transmision normal de los impulsos nerviosos.'],[]).
	
	% TEMPLATES DE AMERICA 
	% info america
	template([america], ['El Club de Fútbol América S. A. de C. V. es un equipo de fútboln profesional de la Primera División de México. Fue fundado el 12 de octubre de 1916 en la Ciudad de Mexico, por un grupo de estudiantes encabezados por el jugador Rafael Garza Gutierrez, y el profesor y entrenador Eugenio Cenoz. Disputa sus partidos, como local, en el Estadio Azteca, y los colores tradicionales del uniforme americanista son el amarillo y el azul.'], []).
	template([que, es, club, america], ['El Club de Fútbol América S. A. de C. V. es un equipo de fútboln profesional de la Primera División de México. Fue fundado el 12 de octubre de 1916 en la Ciudad de Mexico, por un grupo de estudiantes encabezados por el jugador Rafael Garza Gutierrez, y el profesor y entrenador Eugenio Cenoz. Disputa sus partidos, como local, en el Estadio Azteca, y los colores tradicionales del uniforme americanista son el amarillo y el azul. '], []).
	template([hablame, de, club, america], ['El Club de Fútbol América S. A. de C. V. es un equipo de fútboln profesional de la Primera División de México. Fue fundado el 12 de octubre de 1916 en la Ciudad de Mexico, por un grupo de estudiantes encabezados por el jugador Rafael Garza Gutierrez, y el profesor y entrenador Eugenio Cenoz. Disputa sus partidos, como local, en el Estadio Azteca, y los colores tradicionales del uniforme americanista son el amarillo y el azul. '], []).


    % sintomas del Esclerosis multiple
	template([sintomas], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_esclerosis(Sintomas), ListaResultado).

	template([sintomas, del, esclerosis, multiple], ListaResultado, []) :-
   	 	findall(Sintomas, sintoma_esclerosis(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas], ListaResultado, []) :-
		findall(Sintomas, sintoma_esclerosis(Sintomas), ListaResultado).

	template([cuales, son, los, sintomas, de, la, esclerosis, multiple], ListaResultado, []) :-
		findall(Sintomas, sintoma_esclerosis(Sintomas), ListaResultado).

	template([dime, los, sintomas], ListaResultado, []) :-
		findall(Sintomas, sintoma_esclerosis(Sintomas), ListaResultado).
	
	template([dime, los, sintomas, de, la, esclerosis, multiple], ListaResultado, []) :-
		findall(Sintomas, sintoma_esclerosis(Sintomas), ListaResultado).
	
	% causas del Esclerosis multiple
	template([causas], ListaResultado, []) :-
    	findall(Causas, causa_esclerosis(Causas), ListaResultado).

	template([cuales, son, las, causas], ListaResultado, []) :-
		findall(Causas, causa_esclerosis(Causas), ListaResultado).
	
	template([cuales, son, las, causas, de, la, esclerosis, multiple], ListaResultado, []) :-
		findall(Causas, causa_esclerosis(Causas), ListaResultado).

	template([cuales, pueden, ser, las, causas, de, la, esclerosis, multiple], ListaResultado, []) :-
		findall(Causas, causa_esclerosis(Causas), ListaResultado).

	template([dime, las, causas], ListaResultado, []) :-
		findall(Causas, causa_esclerosis(Causas), ListaResultado).
	
	template([dime, las, causas, de, la, esclerosis, multiple], ListaResultado, []) :-
		findall(Causas, causa_esclerosis(Causas), ListaResultado).
	
	template([causas, de, la, esclerosis, multiple], ListaResultado, []) :-
    	findall(Causas, causa_esclerosis(Causas), ListaResultado).

	% especialistas del Esclerosis multiple 
	template([especialistas], ListaResultado, []) :-
    	findall(Especialistas, especialista_esclerosis(Especialistas), ListaResultado).

	template([con, quien, voy], ListaResultado, []) :-
		findall(Especialistas, especialista_esclerosis(Especialistas), ListaResultado).
	
	template([quien, lo, atiende], ListaResultado, []) :-
		findall(Especialistas, especialista_esclerosis(Especialistas), ListaResultado).
	
	template([quien, atiende, la, esclerosis, multiple], ListaResultado, []) :-
		findall(Especialistas, especialista_esclerosis(Especialistas), ListaResultado).
	
	template([cuales, son, los, especialistas], ListaResultado, []) :-
		findall(Especialistas, especialista_esclerosis(Especialistas), ListaResultado).

	template([dime, los, especialistas], ListaResultado, []) :-
		findall(Especialistas, especialista_esclerosis(Especialistas), ListaResultado).
	
	template([quien, me , quita, el, esclerosis, multiple], ListaResultado, []) :-
    	findall(Especialistas, especialista_esclerosis(Especialistas), ListaResultado).
	
	% medicamento del Esclerosis multiple 
	template([medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_esclerosis(Medicamentos), ListaResultado).
	
	template([medicamento], ListaResultado, []):-
		findall(Medicamentos, medicamento_esclerosis(Medicamentos), ListaResultado).
	
	template([cuales, son, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_esclerosis(Medicamentos), ListaResultado).
	
	template([dime, los, medicamentos], ListaResultado, []):-
		findall(Medicamentos, medicamento_esclerosis(Medicamentos), ListaResultado).
	
	template([farmacos], ListaResultado, []):-
		findall(Medicamentos, medicamento_esclerosis(Medicamentos), ListaResultado).
	
	template([que, medicamentos, necesito], ListaResultado, []):-
		findall(Medicamentos, medicamento_esclerosis(Medicamentos), ListaResultado).
	
	template([que, medicamentos, debo, tomar], ListaResultado, []):-
		findall(Medicamentos, medicamento_esclerosis(Medicamentos), ListaResultado).

	% trataemiento del Esclerosis multiple 
	template([tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_esclerosis(Tratameintos), ListaResultado).
	
	template([dime, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_esclerosis(Tratameintos), ListaResultado).
	
	template([cual, es, el, tratamiento], ListaResultado, []):-
		findall(Tratameintos, tratamiento_esclerosis(Tratameintos), ListaResultado).
	
	template([como, se, trata, la, esclerosis, multiple], ListaResultado, []):-
		findall(Tratameintos, tratamiento_esclerosis(Tratameintos), ListaResultado).
	
	template([cuales, son, las, medidas], ListaResultado, []):-
		findall(Tratameintos, tratamiento_esclerosis(Tratameintos), ListaResultado).
	
	%Porteros del club America
	template([porteros], ListaResultado, []):-
		findall(Porteros, america_portero(Porteros), ListaResultado).
	
	template([dime, los, porteros, del, america], ListaResultado, []):-
		findall(Porteros, america_portero(Porteros), ListaResultado).
	
	template([porteros, del, america], ListaResultado, []):-
		findall(Porteros, america_portero(Porteros), ListaResultado).

	template([dime, los, guardametas, america], ListaResultado, []):-
		findall(Porteros, america_portero(Porteros), ListaResultado).

	template([portero], ListaResultado, []):-
		findall(Porteros, america_portero(Porteros), ListaResultado).

	%Defensas del club America
	template([defensas], ListaResultado, []):-
		findall(Defensas, america_defensa(Defensas), ListaResultado).
	
	template([dime, los, defensas, del, america], ListaResultado, []):-
		findall(Defensas, america_defensa(Defensas), ListaResultado).
	
	template([defensas, del, america], ListaResultado, []):-
		findall(Defensas, america_defensa(Defensas), ListaResultado).

	template([dime, los, centrales, america], ListaResultado, []):-
		findall(Defensas, america_defensa(Defensas), ListaResultado).

	template([defensa], ListaResultado, []):-
		findall(Defensas, america_defensa(Defensas), ListaResultado).

	%Laterales del club America
	template([lateral], ListaResultado, []):-
		findall(Laterales, america_lateral(Laterales), ListaResultado).
	
	template([dime, los, laterales, del, america], ListaResultado, []):-
		findall(Laterales, america_lateral(Laterales), ListaResultado).
	
	template([laterales, del, america], ListaResultado, []):-
		findall(Laterales, america_lateral(Laterales), ListaResultado).

	template([dime, los, carrileros, america], ListaResultado, []):-
		findall(Laterales, america_lateral(Laterales), ListaResultado).

	template([laterales], ListaResultado, []):-
		findall(Laterales, america_lateral(Laterales), ListaResultado).

	%Medios del club America
	template([medios], ListaResultado, []):-
		findall(Medios, america_medio(Medios), ListaResultado).
	
	template([dime, los, medio, del, america], ListaResultado, []):-
		findall(Medios, america_medio(Medios), ListaResultado).
	
	template([mediocapista, del, america], ListaResultado, []):-
		findall(Medios, america_medio(Medios), ListaResultado).

	template([dime, los, contencion, america], ListaResultado, []):-
		findall(Medios, america_medio(Medios), ListaResultado).

	template([medio], ListaResultado, []):-
		findall(Medios, america_medio(Medios), ListaResultado).

	%Extremos del club America
	template([extremos], ListaResultado, []):-
		findall(Extremos, america_extremo(Extremos), ListaResultado).
	
	template([dime, los, extremos, del, america], ListaResultado, []):-
		findall(Extremos, america_extremo(Extremos), ListaResultado).
	
	template([extremos, del, america], ListaResultado, []):-
		findall(Extremos, america_extremo(Extremos), ListaResultado).

	template([dime, los, extremos, america], ListaResultado, []):-
		findall(Extremos, america_extremo(Extremos), ListaResultado).

	template([extremo], ListaResultado, []):-
		findall(Extremos, america_extremo(Extremos), ListaResultado).

	%Delanteros del club America
	template([delanteros], ListaResultado, []):-
		findall(Delanteros, america_delantero(Delanteros), ListaResultado).
	
	template([dime, los, delanteros, del, america], ListaResultado, []):-
		findall(Delanteros, america_delantero(Delanteros), ListaResultado).
	
	template([delanteros, del, america], ListaResultado, []):-
		findall(Delanteros, america_delantero(Delanteros), ListaResultado).

	template([dime, los, puntas, america], ListaResultado, []):-
		findall(Delanteros, america_delantero(Delanteros), ListaResultado).

	template([delantero], ListaResultado, []):-
		findall(Delanteros, america_delantero(Delanteros), ListaResultado).

	% templates comparativos del Esclerosis multiple
	template([s(_), es, un, sintoma], [flagSintoma], [0]).
	template([s(_), es, una, causa], [flagCausas], [0]).
	template([s(_), es, un, especialista], [flagEspecialista], [0]).
	template([s(_), es, un, medicamento], [flagMedicamento], [0]).
	template([s(_), es, un, tratamiento], [flagTratamiento], [0]).

	template([tengo, s(_), ',', (_), 'y', (_) ], [flagMultisintoma], [1, 3, 5]).
	
	% templates comparativos del america
	% 
	template([s(_), es, un, portero, del, america], [flagPortero], [0]).
	template([s(_), es, un, defensa, del, america], [flagDefensa], [0]).
	template([s(_), es, un, lateral, del, america], [flagLateral], [0]).
	template([s(_), es, un, medio, del, america], [flagMedio], [0]).
	template([s(_), es, un, extremo, del, america], [flagExtremo], [0]).
	template([s(_), es, un, delantero, del, america], [flagDelantero], [0]).

	template(_, ['Please', explain, a, little, more, '.'], []).
	
	% HECHOS SOBRE Esclerosis multiple
    % Hechos y flag de sintomas del Esclerosis multiple
	sintomaIs(X, R):- sintoma_esclerosis(X), R = [si, X, es, un, sintoma, del, esclerosis, multiple].
    sintomaIs(X, R):- \+sintoma_esclerosis(X), R = [X, no, es, un, sintoma, del, esclerosis, multiple].
	sintoma_esclerosis('fatiga').
	sintoma_esclerosis('vision_borrosa').
	sintoma_esclerosis('dolor_ocular').
	sintoma_esclerosis('perdida_de_vision').
	sintoma_esclerosis('dificultades_para_caminar').
	sintoma_esclerosis('temblor').
	sintoma_esclerosis('entumecimiento_o_hormigueo').
	sintoma_esclerosis('perdida_de_vision').
	sintoma_esclerosis('dificultades_para hablar').
	sintoma_esclerosis('problemas_de_deglucion').
    sintoma_esclerosis('espasticidad_muscular').
	sintoma_esclerosis('problemas_de_memoria').
	sintoma_esclerosis('dificultades_de_concentracion').
	sintoma_esclerosis('depresion').
	sintoma_esclerosis('ansiedad').

	%multisintoma 
	multisintomaIs(X, Y, Z, R):- multisintoma(X, Y, Z), R = ['Claro', X, Y, y, Z, son, sintomas, de, esclerosis, multiple].
	multisintomaIs(X, Y, Z, R):- \+multisintoma(X, Y, Z), R = [X, Y, y, Z, 'NO', son, sintomas, de, esclerosis, multiple].
	multisintoma('depresion', 'ansiedad', 'temblor').
	multisintoma('perdida_de_vision', 'fatiga', 'vision_borrosa').
	multisintoma('dolor_ocular', 'problemas_de_memoria', 'perdida_de_vision').
	multisintoma('dificultades_para_caminar', 'espasticidad_muscular', 'dificultades_de_concentracion').


	% Hechos y flag de causas de la Esclerosis multiple
	causasIs(X, R):- causa_esclerosis(X), R = [si, X, es, una, causa, del, esclerosis, multiple].
    causasIs(X, R):- \+causa_esclerosis(X), R = [X, no, es, una, causa, del, esclerosis, multiple].
	causa_esclerosis('factores_Ggneticos').
	causa_esclerosis('factores_ambientales').
	causa_esclerosis('autoinmunidad').
	causa_esclerosis('fumar').
    causa_esclerosis('sexo_y_edad').

	% Hechos y flag de especialistas de la Esclerosis multiple
	especialistaIs(X, R):- especialista_esclerosis(X), R = [si, X, es, un, especialista, apto, para, diagnosticar, el, esclerosis, multiple].
    especialistaIs(X, R):- \+especialista_esclerosis(X), R = [X, no, es, un, especialista, apto, para, diagnosticar, el, esclerosis, multiple].
	especialista_esclerosis('neurologo').
	especialista_esclerosis('neurorradiologo').
	especialista_esclerosis('neurologo rehabilitador').
	especialista_esclerosis('enfermero/a_especializado_en_esclerosis_multiple').
    especialista_esclerosis('fisioterapeuta').
    especialista_esclerosis('terapeuta_ocupacional').
    especialista_esclerosis('psicologo').
    especialista_esclerosis('psiquiatra').

	% Hechos de medicamentos para el Esclerosis multiple
	medicamentoIs(X, R):- medicamento_esclerosis(X), R = [si, X, es, un, medicamento, para, tratar, el, esclerosis, multiple].
    medicamentoIs(X, R):- \+medicamento_esclerosis(X), R = [X, no, es, un, medicamento, para, tratar, el, esclerosis, multiple].
	medicamento_esclerosis('interferones').
	medicamento_esclerosis('glatiramero_(copaxone)').
	medicamento_esclerosis('ocrelizumab_(ocrevus)').
    medicamento_esclerosis('natalizumab_(tysabri)').
    medicamento_esclerosis('fingolimod_(gilenya)').
	medicamento_esclerosis('teriflunomida_(aubagio)').
	medicamento_esclerosis('metilprednisolona').
	medicamento_esclerosis('oanimod_(zeposia)').
	medicamento_esclerosis('siponimod_(mayzent)').
	medicamento_esclerosis('baclofeno').
	medicamento_esclerosis('modafinilo').
	medicamento_esclerosis('analgesicos').
	medicamento_esclerosis('antidepresivos').

	% Hechos del tratamiento para el Esclerosis multiple
	tratamientoIs(X, R):- tratamiento_esclerosis(X), R = [si, X, es, un, trataemiento, para, tratar, el, esclerosis, multiple].
    tratamientoIs(X, R):- \+tratamiento_esclerosis(X), R = [X, no, es, un, trataemiento, para, tratar, el, esclerosis, multiple].
	tratamiento_esclerosis('medicamentos_modificadores_de_la_enfermedad_(MME)').
	tratamiento_esclerosis('corticosteroides').
	tratamiento_esclerosis('medicamentos_modificadores_de_la_progresion').
	tratamiento_esclerosis('tratamiento_de_los_sintomas').
    tratamiento_esclerosis('rehabilitacion_y_terapia').
    tratamiento_esclerosis('manejo_de_la_fatiga').

	% HECHOS DEL AMERICA"
	% america porteros 
	america_porteroIs(X, R):- america_portero(X), R = [si, X, es, portero, del, club, america].
   	america_porteroIs(X, R):- \+america_portero(X), R = [X, no, es, portero, del, club, america].
	america_portero('zelada').
	america_portero('guilleromo_ochoa').
	america_portero('adolfo').
	america_portero('chavez').
	america_portero('marchesin').
    america_portero('mouses_muñoz').
    america_portero('pineda').
	america_portero('navarrete'). 
	america_portero('becerra').
	america_portero('saja').
	america_portero('malagon').

	%america defensas
	america_defensaIs(X, R):- america_defensa(X), R = [si, X, es, defensa, del, club, america].
   	america_defensaIs(X, R):- \+america_defensa(X), R = [X, no, es, defensa, del, club, america].
	america_defensa('tena').
	america_defensa('davino').
	america_defensa('manzo').
	america_defensa('trejo').
	america_defensa('hernadez').
    america_defensa('castro').
    america_defensa('bravo').
	america_defensa('santos'). 
	america_defensa('caseres').
	america_defensa('araujo').
	america_defensa('juarez').

	%america laterales 
	america_lateralIs(X, R):- america_lateral(X), R = [si, X, es, lateral, del, club, america].
   	america_lateralIs(X, R):- \+america_lateral(X), R = [X, no, es, lateral, del, club, america].
	america_lateral('layun').
	america_lateral('aguilar').
	america_lateral('alvarez').
	america_lateral('trejo').
	america_lateral('fuentes').
    america_lateral('samudio').
    america_lateral('lara').
	america_lateral('reyes').

	%america mediocapistas 
	america_medioIs(X, R):- america_medio(X), R = [si, X, es, lateral, del, club, america].
   	america_medioIs(X, R):- \+america_medio(X), R = [X, no, es, lateral, del, club, america].
	america_medio('blanco').
	america_medio('reinoso').
	america_medio('cabanas').
	america_medio('villa').
	america_medio('valdez').
    america_medio('martinez').
    america_medio('pardo').
	america_medio('fidalgo').
	america_medio('sanches').  
	america_medio('sambueza').
	america_medio('jonathan').

	%america extremos 
	america_extremoIs(X, R):- america_extremo(X), R = [si, X, es, extremo, del, club, america].
   	america_extremoIs(X, R):- \+america_extremo(X), R = [X, no, es, extremo, del, club, america].
	america_extremo('suarez').
	america_extremo('rodrigez').
	america_extremo('cabecita').
	america_extremo('zendejas').
	america_extremo('domiguez').
    america_extremo('quintero').
    america_extremo('lainez').
	america_extremo('renato').
	america_extremo('zague').  
	america_extremo('borga').
	america_extremo('arroyo').

	%america extremos america_delantero
	america_delanteroIs(X, R):- america_delantero(X), R = [si, X, es, delantero, del, club, america].
   	america_delanteroIs(X, R):- \+america_delantero(X), R = [X, no, es, delantero, del, club, america].
	america_delantero('jimenez').
	america_delantero('martin').
	america_delantero('martinez').
	america_delantero('vinas').
	america_delantero('romero').
    america_delantero('benedeto').
    america_delantero('marin').
	america_delantero('peralta').
	america_delantero('hugo').  
	america_delantero('zamorano').
	america_delantero('castillo').

	% Por defecto 
	match([],[]).
	match([], _):- true.

	match([S|Stim],[I|Input]) :-
		atom(S), % si I es un s(X) devuelve falso
		S == I,
		match(Stim, Input),!.

	match([S|Stim],[_|Input]) :-
	% I es un s(X), lo ignoro y continúo con el resto de la lista
		\+atom(S),
		match(Stim, Input),!.

	replace0([], _, _, Resp, R):- append(Resp, [], R),!.

	% Esclerosis multiple Sintomas:
    replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintoma,
    sintomaIs(Atom, R).

	%multisintoma
	replace0([I,J,K|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMultisintoma,
	nth0(J, Input, Atom2),
    nth0(0, Resp, Y),
    Y == flagMultisintoma,
	nth0(K, Input, Atom3),
    nth0(0, Resp, Z),
    Z == flagMultisintoma,
	multisintomaIs(Atom, Atom2, Atom3, R).

	% Esclerosis multiple Causas:
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagCausas,
    causasIs(Atom, R).

	% Esclerosis multiple Especialista
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagEspecialista,
    especialistaIs(Atom, R).

	% Esclerosis multiple medicamento  
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMedicamento,
    medicamentoIs(Atom, R).

	% Esclerosis multiple tratamiento 
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagTratamiento,
    tratamientoIs(Atom, R).
	

	% AMERICA FLAGS
    % america porterps
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPortero,
    america_porteroIs(Atom, R).

	%america defensas
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagDefensa,
    america_defensaIs(Atom, R).

	%america laterales
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagLateral,
    america_lateralIs(Atom, R).
	
	%america mediocampistas
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMedio,
    america_medioIs(Atom, R).

	%america extremos
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagExtremo,
    america_extremoIs(Atom, R).

	%america delanteros 
	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagDelantero,
    america_delanteroIs(Atom, R).
    