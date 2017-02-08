sum-up-numbers-general([], 0).
sum-up-numbers-general(L, N) :-  
								L = [A|B], 
								\+number(A), 
								sum-up-numbers-general(B, N).
sum-up-numbers-general(L, N) :-  
								L = [A|B], 
								number(A), 
								sum-up-numbers-general(B, N1), N is A + N1.
sum-up-numbers-general(L, N) :- 
								L = [A|B], 
								is_list(A), 
								sum-up-numbers-general(A, N1), 
								sum-up-numbers-general(B, N2),
								N is N1 + N2.