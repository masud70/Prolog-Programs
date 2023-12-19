domains
    name, address = string
    age = integer
    list = age*
predicates
    person(name,address,age)
    sumlist(list,age,integer)
goal
    findall(Age,person(_,_,Aqe),L),sumlist(L,Sum,N),
    Age = Sum/N,
    write("Average =",Age),nl.
clauses
    sumlist( [] ,0,0).
    sumlist( [H|T] ,Sum,N) :-
        sumlist(T,S1,N1),Sum=H+S1,N=1+N1.
    person("Sherlock Holmes l ,"228 Baker Street",42).
    person("Pete Spiersl,"Flat 22, 21st Street",36).
    person("Mary Darrowl,"Flat 2, Omega Home",51).