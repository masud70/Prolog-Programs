domains 
	tree=reference t(id,val,tree,tree) 
	id = symbol 
	val = integer 
predicates 
	lookup(id,val,tree) 
clauses 
	lookup(ID,VAL,t(ID,VAL,_,_)):-!. 
	lookup(ID,VAL,t(ID1,_,TREE,_)):- 
		ID<ID1,!,lookup(ID,VAL,TREE). 
	lookup(ID,VAL,t(_,_,_,TREE)):-lookup(ID,VAL,TREE). 