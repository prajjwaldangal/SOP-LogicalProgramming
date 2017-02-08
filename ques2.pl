% [a, 100, b, [200], c, 300, d]

sum-up-numbers-general(L, N) :-  L = [A|B], 
sum-up-numbers-general([], 0).
sum-up-numbers-general(L, N) :-
						d