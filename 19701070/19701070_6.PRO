domains
    n, f   =   integer
predicates
    factorial(n, f)
clauses
    factorial(1, 1).
    factorial(N, R):-
        N > 0 and
        N1 = N-1 and
        factorial(N1, R1) and
        R = R1 * N.