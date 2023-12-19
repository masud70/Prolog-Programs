domains
	name = symbol
	password = integer
predicates
    logon
    user(name, password)
    user_check(name)
    getinput(name)
    get_pass(name, password)
goal
	logon.
clauses
    logon:-
        clearwindow,
        makewindow(1, 7, 7, "PASSWORD", 5, 10, 10, 40),
        write("Please enter your name : "),
        readln(Name),
        user_check(Name).

    user_check(Name):-
        user(Name, _),
        getinput(Name).

    user_check(_):-
        write("Invalid User"),
        readchar(_),
        logon.

    getinput(Name):-
        write("\nPlease enter your password : "),
        get_pass(Name, _).

    get_pass(Name, _):-
        readint(Pass),
        get_pass(Name, Pass).

    get_pass(Name, Password):-
        user(Name, Password),
        write("\nOk! \nValid Password"),
        readchar(_),
        exit.

    get_pass(_,_):-
        write("\nInvalid Password"),
        readchar(_),
        logon.

    user(drosi, 100).
    user(rana, 101).
    user(imran, 102).
    user(joy, 103).
    user(nur, 225).
