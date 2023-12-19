domains
	person = symbol
predicates
	male(person)
	female(person)
	father(person,person)
	mother(person,person)
	parent(person,person)
	sister(person,person)
	brother(person,person)
	uncle(person,person)
	grandfather(person,person)
clauses
	male(alan).
	male(charles).
	male(bob).
	male(ivan).
	female(beverly).
	female(fay).
	female(marilyn).
	female(sally).
	mother(marilyn,beverly).
	mother(alan,sally).
	father(alan,bob).
	father(beverly,charles).
	father(fay,bob).
	father(marilyn,alan).
	parent(X,Y) if mother(X,Y).
	parent(X,Y) if father(X,Y).
	
	brother(X,Y) if
		male(Y) and 
		parent(X,P) and
		parent(Y,P) and X <> Y.

	sister(X,Y) if
		female(Y) and
		parent(X,P) and
		parent(Y,P) and
		X <> Y.

	uncle(X,U) if
		mother(X,P) and
		brother(P,U).
		uncle(X,U) if
		father(X,P) and
		brother(P,U).

	grandfather(X,G) if
		father(P,G) and
		mother(X,P).

	grandfather(X,G) if
		father(X,P) and
		father(P,G).