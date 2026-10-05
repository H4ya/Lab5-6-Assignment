% model, price, age, colors, miles %

car(chrysler, 130000, 3, red, 12000).
car(ford, 90000, 4, gray, 25000).
car(datsun, 80000, 1, red, 30000).
truck(ford, 80000, 6, blue, 8000).
truck(datsun, 50000, 5, orange, 20000).
truck(toyota, 25000, 2, black, 25000).


can_buy(Cost) :-
    car(Model, C1, _, _, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the car '), write(Model), nl.

can_buy(Cost) :-
    truck(Model, C2, _, _, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the truck '), write(Model), nl.


can_buy(Cost, Color) :-
    car(Model, C3, _, Color, _),
    C3 < Cost,
    write('With a budget of '), write(Cost),
    write(' and color '), write(Color), nl,
    write(' you can purchase the car '), write(Model), nl.

can_buy(Cost, Color) :-
    truck(Model, C3, _, Color, _),
    C3 < Cost,
        write('With a budget of '), write(Cost),
    write(' and color '), write(Color), nl,
    write('you can purchas the truck '), write(Model), nl.
