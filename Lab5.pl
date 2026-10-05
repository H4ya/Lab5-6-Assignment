female(mona)
female(jackie)
female(marge)
female(selma)
female(patty)
female(lisa)
female(maggie)
female(ling)
male(abraham)
male(clancy)
male(herb)
male(homer)
male(bart)

parent(abraham, herb)
parent(abraham, homer)
parent(clancy, marge)
parent(clancy, patty)
parent(clancy, semla)
parent(homer, bart)
parent(homer, lisa)
parent(homer, maggie)

parent(mona, herb)
parent(mona, homer)
parent(jackie, marge)
parent(jackie, patty)
parent(jackie, selma)
parent(marge,bart)
parent(marge, lisa)
parent(marge, maggie)
parent(selma, ling)


mother(X,Y) :- female(X), parent(X,Y).
father(X,Y) :- male(X), parent(X,Y).

sibling(X,Y) :- parent(P,X), parent(P,Y) , X\=Y.

sister(X,Y) :- female(X), parent(P,X), parent(P,Y) , X\=Y.
brother(X,Y) :- male(X), parent(P,X), parent(P,Y), X\=Y.


son(X,Y) :- male(X), parent(Y,X).
daughter(X,Y) :- female(X), parent(Y,X).

grandfather(X,Z) :- male(X), parent(X,Y), parent(Y,Z).

aunt(X,Y) :- parent(P,Y), sister(X,P).
uncle(X,Y) :- parent(P,Y), brother(X,P).

cousin(X,Y):- Parent(P1,X), Parent(P2,Y), sibling(P1,P2).

ancestor(X,Z) :- parent(X,Z).

ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z).
