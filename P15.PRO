domains
	name = symbol
predicates
	father(name,name)
	everybody
clauses
	father(leonard,katherine).
	father(carl,jason).
	father(carl,marilyn).
	everybody if
		father(X,Y) and
		write(X," is ",Y,"'s father\n") and
		fail.