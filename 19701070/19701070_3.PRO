domains
	town = symbol
	distance = integer
predicates
	road(town, town, distance)
	route(town, town, distance)
clauses
	road(c, b, 70).
	road(c, s, 80).
	road(c, r, 180).
	road(s, cc, 100).
	road(cc, bb, 85).
	road(cc, ss, 100).
	road(bb, ss, 175).
	road(bb, r, 250).
	road(ss, g, 110).

	route(Town1, Town2, Distance):-
		road(Town1, Town2, Distance).
	route(Town1, Town2, Distance):-
		road(Town1, X, Dist1), route(X, Town2, Dist2),
		Distance = Dist1 + Dist2.