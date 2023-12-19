domains
	integerlist = integer*
predicates
	writelist(integerlist)
	writeS(integerlist,integer)
clauses
	writelist( NL) :- nl, writeS( NL, 0 ), nl.
	writeS( TL, S) :-!, nl, writeS( TL, _).
	writeS( [H|T], N ) :- write(H," "),N1=N+1,writeS(T,N1).
	writeS ( [], _ ).