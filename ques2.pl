% [a, 100, b, [200, c, 100], c, 300, d]

sum-up-numbers-general(L, N) :-  L = [A|B], \+number(A), sum-up-numbers-general(B, N).
sum-up-numbers-general(L, N) :-  L = [A|B], number(A), sum-up-numbers-general(B, N1), N is A + N1.
sum-up-numbers-general([], 0).
sum-up-numbers-general(L, N) :-  L = [A|B], is_List(A), sum-up-numbers-general(A, N1).