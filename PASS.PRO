domains
	name = symbol
	password = integer
predicates
	getinput(name)
	logon
	get_pass(name,password)
	user_check(name)
	user(name, password)
clauses
	logon:-
		clearwindow,
		makewindow(1,7,7,"PASSWORD",5,10,10,40),
		write("Please enter your name : "),nl,
		readln(Name),
		user_check(Name).

	user_check(Name):-
		user(Name,_),
		getinput(Name).

	user_check(_):-
		write("Invalid User"),
		readchar(_),
		logon.

	getinput(Name):-
		write("\n Please enter your password"),nl,
		write("\n <Esc> End of Password"),nl,
		get_pass(Name,
		_).

	get_pass(Name,Password):-
		readchar(Part),
		Part<>27,
		write("*"),
		str_char(Tem,Part),
		concat(Password,[Tem],Pass),
		get_pass(Name,Pass).

	get_pass(Name,Password):-
		user(Name, Password),
		write("\n Ok! \n Valid Password"),
		readchar(_),
		exit.

	get_pass(_,_):-
		write("\n Invalid Password"),
		readchar(_),
		logon.


	user(drosi, 100).
	user(rana, 101).
	user(imran, 102).
	user(joy, 103).
	user(nur, 225).