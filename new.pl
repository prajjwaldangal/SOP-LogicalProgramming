% charlist(a,b,c,d,e,f).
sum-up-numbers-simple(L, N) :-
								L = [A|B],
								\+number(A),
								sum-up-numbers-simple(B, N).


sum-up-numbers-simple([], 0).
sum-up-numbers-simple(L, N)  :-   
								L = [A|B],
								number(A), 
								sum-up-numbers-simple(B, N1), N is A + N1.
