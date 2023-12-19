domains
    town = symbol
    distance = integer
    list = town*

predicates
    road(town, town, distance)
    route(town, town, distance)
    route(town, town, distance, list)
    member(town, list)

clauses
    member(X, [X|_]).
    member(X,[_|T]):-member(X,T).
    
    road(coxbazar, dhaka, 1200).
    road(dhaka, coxbazar, 1200).
    road(coxbazar, chittagong, 1000).
    road(chittagong, coxbazar, 1000).
    road(chittagong, feni, 200).
    road(feni, chittagong, 200).
    road(feni, sylhet, 500).
    road(feni, dhaka, 700).
    road(chittagong, sylhet, 2000).
    road(sylhet, dhaka, 900).
    road(dhaka, sylhet, 900).

    route(Town1, Town2, Distance) :-
        route(Town1, Town2, Distance, []).

    route(Town1, Town2, Distance, _) :-
        road(Town1, Town2, Distance).

    route(Town1, Town2, Distance, Visited) :-
        road(Town1, X, Dist1),
        not(member(X, Visited)),
        route(X, Town2, Dist2, [X | Visited]),
        not(member(Town2,Visited)),
        Distance = Dist1 + Dist2.
