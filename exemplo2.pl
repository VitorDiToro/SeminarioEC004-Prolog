% Fatos ou Base de Conhecimento
gerou(kelly,maria).
gerou(cleber,maria).
gerou(maria,julia).
gerou(maria,pedro).
gerou(maria,joao).
gerou(pedro,lucas).

feminino(kelly).
feminino(maria).
feminino(julia).
feminino(bruna).
masculino(cleber).
masculino(pedro).
masculino(lucas).
masculino(joao).

% Regras
filho(X, Y) :-
	gerou(Y,X).
	
filho_masculino(X,Y) :-
	gerou(Y,X),
	masculino(X).

mae(X,Y) :-
	gerou(X,Y),
	feminino(X).

pai(X,Y) :-
	gerou(X,Y),
	masculino(X).
	
avo(X, Z) :-
	gerou(X, Y),
	gerou(Y,Z).

