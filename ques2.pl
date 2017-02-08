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

% case for when first element is list
sum-up-numbers-general(L, N) :- 
								L = [A|B], 
								is_list(A), 
								sum-up-numbers-general(A, N1), 
								sum-up-numbers-general(B, N2),
								N is N1 + N2.