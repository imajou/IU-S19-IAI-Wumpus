% World 3

% ---------------------
% |   |   | P |   | P |
% ---------------------
% | P |   |   |   |   |
% ---------------------
% |   | P |   | W |   |
% ---------------------
% |   |   | P |   | G |
% ---------------------
% | A |   |   | P |   |
% ---------------------


agent([1, 1]).

wumpus([4, 3]).

gold([5, 2]).

pit([2, 3]).
pit([3, 2]).
pit([3, 5]).
pit([4, 1]).
pit([5, 5]).
pit([1, 4]).

world_width(5).
world_height(5).