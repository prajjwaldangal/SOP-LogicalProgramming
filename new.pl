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

% [2,e,3,d,4,c,5,b,6,a,7]  ,  d

common-unique-elements-helper (L, ele, List) :-
											L = [A|B],
											is_list(A),
											common-unique-elements-helper(A, ele, List1),
											common-unique-elements-helper(B, ele, List2),
											temp = [List1 | List2],
											List [temp | ]

common-unique-elements-helper (L, ele, List) :-
											L = [A|B],
											number(A),
											jj(A, ele),
											List = [ele | L].

common-unique-elements-helper (L, ele, List) :-
											L = [A|B],
											\+number(A),
											\+ jj(A, ele),
											common-unique-elements-helper(B, ele, List).

common-unique-elements(L1,L2,N)  :-  










