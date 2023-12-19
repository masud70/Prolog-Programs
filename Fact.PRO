domains
    n, f   =   integer
predicates
    factorial(n, f)
clauses
    factorial(0, 1).
    factorial(N, R):-
        N1 = N-1,
        factorial(N1, R1),
        R = R1 * N.