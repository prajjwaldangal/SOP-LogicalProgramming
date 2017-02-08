sum-up-numbers-simple(L, N) :-
								L = [A|B],
								\+number(A),
								sum-up-numbers-simple(B, N).
sum-up-numbers-simple([], 0).
sum-up-numbers-simple(L, N)  :-   
								L = [A|B],
								number(A), 
								sum-up-numbers-simple(B, N1), N is A + N1.


% L1 -> [100, 300, 200],      L2 -> [300, 100, 200, a]


min([],Y)  :-  Y.
min(X,Y,X) :-  X < Y.
min(X,Y,Y) :-  Y < X.

find-min(L,M) :-
			L = [A|B],
			B = [C|D],
			number(A),
			find-min(B, )
				

min-above-min(L1, L2, N) :- 
						find-min(L2, M),
						% take M 
						L2 = [A|B],
						number(A)
