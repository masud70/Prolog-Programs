predicates 
	plus(integer,integer,integer) 
	numb(integer) 
clauses 
	plus(X,Y,Z):- bound(X),bound(Y),Z=X+Y. 
	plus(X,Y,Z):- bound(Y),bound(Z),X=Z-Y. 
	plus(X,Y,Z):- bound(X),bound(Z),Y=Z-X. 
	plus(X,Y,Z):- free(X),free(Y),bound(Z),numb(X),Y=Z-X. 
	plus(X,Y,Z):- free(X),free(Z),bound(Y),numb(X),Z=X+Y. 
	plus(X,Y,Z):- free(Y),free(Z),bound(X),numb(Y),Z=X+Y. 
	plus(X,Y,Z):- free(X),free(Y),free(Z),numb(X),numb(Y),Z=X+Y.  
	numb(0). 
	numb(X) :- numb(A) , X=A+1. 