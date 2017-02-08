
john_is_apple.
eats(fred, oranges).
eats(ram, chicken).
age(harry, 12).

tape(2, beatles, sgt_pepper, a_day_in_the_life).
tape(4, rolling_stones, sticky_fingers, brown_sugar).

mortal(X) :-
		human(X).
					
human(socrates).

p([H|T], H, T).

speed(ford, 100).
speed(chevy, 105).
time(ford, 9).
time(chevy, 21).





% [1,2,3]
on(Item, [Item|Rest]).
on2(Rest, [Item|Rest]).

ram_is_hari.

on2(Item, [DisregardHead|Tail]) :-	on2(Item, Tail).
% on2(Item, L) :-	[]

% also add Result column
% check-true(L, [0, 300, 0, 100, 600, 0, 0, 100, 400], Tr) :- 

% check-true(L, 300, Tr) :- ret is sum-up-numbers-simple(L), on

hari_is_ramToriya.







distance(X, Y) :-	speed(X, S) , time(X, T) , Y  is  S * T.

vel1(ford, 100).
vel2(ford, 110).

% in-taker   ,     out-giver
acce(Name, A) :- 
	vel1(Name, What), vel2(Name, What2), A is What - What2.
% john_is_ball.


sum-up-numbers-general(L, N) :- 

factorial(0,1).
factorial(N,F) :-	N>0, N1 is N-1, factorial(N1, F1), F is N * F1. 

append([], List, List).
append([Head|List_1], List_2, [Head|List_3]) :-	append(List_1, List_2, List_3).