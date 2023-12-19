domains
    file = myfile
predicates
    start
    readin(char)
clauses
    start:-
        openwrite (myfile ,"tryfile.one") ,
        writedevice(myfile),
        readchar(X),
        readin(X),
        closefile(myfile),
        writedevice(screen),
        write("Your input has been transferred a file").
    readin('#'):- !.
    readin('\13'):- !,write("\13\10") ,readchar(X) ,readin(X).
    readin(X):- write(X),readchar(Y),readin(Y).