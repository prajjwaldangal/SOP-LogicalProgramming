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

common-unique-elements-helper(L, ele, List) :-
											L = [A|B],
											is_list(A),
											common-unique-elements-helper(A, ele, List1),
											common-unique-elements-helper(B, ele, List2),
											temp = [List1 | List2],
											List = [temp | List].

common-unique-elements-helper(L, ele, List) :-
											L = [A|B],
											jj(A, ele),
											List = [ele | List].

common-unique-elements-helper(L, ele, List) :-
											L = [A|B],
											\+ jj(A, ele),
											common-unique-elements-helper(B, ele, List).

common-unique-elements([], L2, []).
common-unique-elements(L1, [], []).
common-unique-elements([], [], []).


common-unique-elements(L1,L2,N)  :-  
								L2 = [A|B],
								\+ is_list(A),
								common-unique-elements-helper(L1, A, N),
								common-unique-elements(L1, B, N).

common-unique-elements(L1,L2,N)  :-  
								L2 = [A|B],
								is_list(A),
								common-unique-elements(L1, A, N1),
								common-unique-elements(L1, B, N2),
								append(N1, N2, N).
								










