
john_is_apple.
eats(fred, oranges).
eats(ram, chicken).
age(harry, 12).

tape(2, beatles, sgt_pepper, a_day_in_the_life).
tape(4, rolling_stones, sticky_fingers, brown_sugar).

mortal(X) :-
		human(X).
					
human(socrates).

speed(ford, 100).
speed(chevy, 105).
time(ford, 9).
time(chevy, 21).


distance(X, Y) :-	speed(X, S) , time(X, T) , Y  is  S * T.

vel1(ford, 100).
vel2(ford, 110).

# in-taker   ,     out-giver
acce(Name, A) :- 
	vel1(Name, What), vel2(Name, What2), A is What - What2.
# john_is_ball.

# [1,2,3]
sum-up-numbers-simple([], 0).
sum-up-numbers-simple(L, N)  :-   L = [A|B], N = A + sum-up-numbers-simple(B, N).

on(Item, [Item|Rest]).
on2(Rest, [Item|Rest]).