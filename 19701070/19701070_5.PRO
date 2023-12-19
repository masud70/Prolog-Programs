domains
	list = integer*
    
predicates
	append(list, list, list)
	writelist(list)
	input(list)
	sort(list, list)
	compare(integer, integer)
	swap(list,list)

clauses
	input(List):-
		readint(Input),
		Input <> 27,
		append(List, [Input], X),
		input(X).

	input(List):-
		sort(List,_).

	sort(List, Sorted):-
		swap(List, List1),!,
		sort(List1, Sorted).

	sort(Sorted, Sorted):-
		write("List for sorted Data \n"),
		writelist(Sorted).

	swap([X,Y|Tail], [Y,X|Tail]):-
		compare(X,Y).
     	swap([Z|Tail],[Z|Tail1]):-
		swap(Tail,Tail1).

	compare(X, Y):- X>Y.
	append([], ListA, ListA).

	append([X|List1], List2, [X|List3]):-
		append(List1,List2,List3).

	writelist([]).

	writelist([Head|Tail]):-
		write(Head),nl, writelist(Tail).
goal
	clearwindow,
	makewindow(1,7,7,"",0,0,25,80),
	write("Press <Esc>  for Exit\n"),
	write("Enter data : \n"),
	readint(N), N <> 27,
	Input([N]).
