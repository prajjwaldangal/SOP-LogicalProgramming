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

/*
min([],Y)  :-  Y.
min(X,Y,X) :-  X < Y.
min(X,Y,Y) :-  Y < X.			
				

min-above-min(L1, L2, N) :- 
						find-min(L2, M),
						% take M 
						L2 = [A|B],
						number(A),
						find-min(L1, M2),
						min(M, M2, M),
						N is M2.

min-above-min(L1, L2, N) :- 
						find-min(L2, M),
						% take M 
						L2 = [A|B],
						number(A),
						find-min(L1, M2),
						min(M, M2, M2),
						% you may need to make a delete function
						min-above-min
*/

jj(X, Y)  :-  X = Y.

% [a, b, c] , a 
common-unique-elements-helper (L, ele, List) :-
											L = [A|B],
											jj (A, ele),
											common-unique-elements-helper(B, ele, List),
											append()

common-unique-elements(L1,L2,N)  :- N is 5.
