domains
    letter = char
    word = letter*
predicates
    divide(word, word, word, word)
    vocal(letter)
    consonant(letter)
    string_word(string, word)
    append(word, word, word)
    repeat
clauses
    divide(Start, [T1, T2, T3 | Rest], D1, [T2, T3 | Rest]) :-
        vocal(T1), consonant(T2), vocal(T3),
        append(Start, [T1], D1).
    divide(Start, [T1, T2, T3, T4 | Rest], D1, [T3, T4 | Rest]) :-
        vocal(T1), consonant(T2), consonant(T3), vocal(T4),
        append(Start, [T1, T2], D1).
    divide(Start, [T1 | Rest], D1, D2) :-
        append(Start, [T1], S),
        divide(S, Rest, D1, D2).
    vocal('a'). vocal('e'). vocal('i'). vocal('o'). vocal('u'). vocal('y').
    consonant(B) :- not(vocal(B)), code_type(B, lower).
    string_word("", []):-!.
    string_word(Str, [H | T]) :-
        string_word(S, T),
        atom_codes(H, [C]),
        append([C], S, Str).
    append([], L, L):-!.
    append([X | L1], L2, [X | L3]) :-
        append(L1, L2, L3).
    repeat.
    repeat:- repeat.
