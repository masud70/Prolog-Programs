domains
	town = symbol
	distance = integer
predicates
	road(town,town,distance)
	route(town,town,distance)
clauses
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
	route(Town1,Town2,Distance):-
		road(Town1,Town2,Distance).
	route(Town1,Town2,Distance):-
		road(Town1,X,Dist1),route(X,Town2,Dist2),
		Distance=Dist1+Dist2.