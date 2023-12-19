domains
	expr = 	number(integer); x; log(expr);
			plus(expr,expr); mult(expr,expr)
predicates
	writeExp(expr)
clauses
	writeExp(x) :- write('x').
	writeExp(number(No)) :- write(No).
	writeExp(log(Expr)) :-
		write( "log ("), writeExp (Expr), write( ')').
	writeExp(plus(U1,U2)):-
		writeExp(U1), write('+'), writeExp(U2).
	writeExp(mult(U1,U2)):-
		writeExp(U1), write('*'), writeExp(U2).