predicates
	run
clauses
	run :-
		makewindow(1,20,7,"A blue window ",2,5,10,50),
		write("The characters are red "),
		makewindow(2,184,7,"A light cyan window",14,55,10,20),
		write("This window is light cyan and the "),
		write("letters are black and blink."),
		write("Please type an integer to exit."),nl,
		readint(_),
		removewindow,
		readint(_),
		removewindow,
		readint(_),
		write("Notice where the integer appears").