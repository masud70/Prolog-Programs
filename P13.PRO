domains
	title, author = symbol
	pages = integer
	publication = book(title,pages)
predicates
	written_by(author,publication)
	long_novel(Title)
clauses
	written_by(fleming,book("DR NO",210)).
	written_by(melville,book("MOBY DICK",600)).
	long_novel(Title):-written_by(_,book(Title,Length)),
	Length > 300.