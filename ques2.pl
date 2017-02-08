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

?- sum-up-numbers-general( [ [ [ 200, 100], [100] ], a, b, 100], 500).
true .

?- sum-up-numbers-general( [], 0).
true .

?- sum-up-numbers-general( [100], 100).
true .

?- sum-up-numbers-general( [100, 200], 300).
true .

?- sum-up-numbers-general( [a], 0).
true .

?- sum-up-numbers-general( [a, 100, b, 200, c, 300, d], 600).
true .

?- sum-up-numbers-general( [[]], 0).
true .

?- sum-up-numbers-general( [[100]], 100).
true .

?- sum-up-numbers-general( [100, [200]], 300).
true .

?- sum-up-numbers-general( [a, 100, b, [200], c, 300, d], 600).
true .

?- sum-up-numbers-general( [a, 100, [ [ b, [ [200], c ] ], 300, d]], 600).
true .
