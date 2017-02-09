% Ques 1:
sum-up-numbers-simple(L, N) :-
								L = [A|B],
								\+number(A),
								sum-up-numbers-simple(B, N).
sum-up-numbers-simple([], 0).
sum-up-numbers-simple(L, N)  :-   
								L = [A|B],
								number(A), 
								sum-up-numbers-simple(B, N1), N is A + N1.


% Ques: 2
% case for when first element is list
sum-up-numbers-general(L, N) :- 
								L = [A|B], 
								is_list(A), 
								sum-up-numbers-general(A, N1), 
								sum-up-numbers-general(B, N2),
								N is N1 + N2.

% case for empty list 
sum-up-numbers-general([], 0).   

% case for when the atom is not a number
sum-up-numbers-general(L, N) :-  
								L = [A|B], 
								\+number(A), 
								sum-up-numbers-general(B, N).

% case for when atom is a number
sum-up-numbers-general(L, N) :-  
								L = [A|B], 
								number(A), 
								sum-up-numbers-general(B, N1), N is A + N1.





/*% Ques 3:
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
						% min-above-min

*/



% Ques 4:

common-unique-elements([], L2, []).
common-unique-elements(L1, [], []).
common-unique-elements([], [], []).


common-unique-elements(L1,L2,N)  :-  
								L2 = [A|B],
								\+ is_list(A),
								member(A, L1),
								append(N, [A], N),
								common-unique-elements(L1, B, N).

common-unique-elements(L1,L2,N)  :-  
								L2 = [A|B],
								is_list(A),
								common-unique-elements(L1, A, N1),
								common-unique-elements(L1, B, N2),
								append(N1, N2, N).
								










