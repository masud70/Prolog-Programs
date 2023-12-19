domains
    file = input
predicates
    start
    print_contents
goal
    start.
clauses
    start:-
        write ("Which file do yau want to work with ?"),
        readln(FileName) ,
        openread(input,FileName),
        readdevice(input),
        print_contents.
    print_contents:-
        not(eof(input)),readchar(Y),char_int(Y,T),
        write(T," "),print_contents.
    print_contents:-
        nl,readdevice(keyboard),
        write("\nPlease press the space bar"),readchar(_).