predicates
	parents(symbol,symbol)
	wife(symbol,symbol)
	son(symbol,symbol)
	%sisters(symbol,symbol)
	male(symbol)
	female(symbol)
	brothers(symbol,symbol)
	grandson(Symbol,symbol)
	father(symbol,symbol)
	mother(symbol,symbol)

clauses
	parents(kaushlya,ram).
	parents(dashrath,ram).
	parents(sumitra,lakshman).
	parents(dashrath,lakshman).
	parents(kaikeyi,bharat).
	parents(dashrath,bharat).
	parents(ram,luv).
	parents(ram,kush).

	wife(kaikeyi,dashrath).
	wife(sumitra,dashrath).
	wife(kaushlya,dashrath).

	male(ram).
	male(dashrath).
	male(barat).
	male(lakshman).
	male(luv).
	male(kush).

	female(kaushlya).
	female(kaikeyi).
	female(sumitra).
	female(seeta).	
	female(urmila).

	father(X,Y) :- male(X),parents(X,Y).
	mother(X,Y) :- female(X),parents(X,Y).
	son(X,Y) :- male(X),parents(Y,X).
	%son(X,Y) :- male(X),mother(Y,X).
	brothers(X,Y) :- male(X),male(Y),father(Z,X),father(Z,Y),X<>Y.
	grandson(X,Y) :- male(Y),father(X,Z),father(Z,Y).
	