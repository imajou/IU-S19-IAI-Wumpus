% World 2

% ---------------------
% |   |   | P |   | P |
% ---------------------
% | W |   |   |   |   |
% ---------------------
% |   | P |   |   |   |
% ---------------------
% |   |   | P |   | G |
% ---------------------
% | A |   |   | P |   |
% ---------------------


agent([1, 1]).

wumpus([1, 4]).

gold([5, 2]).

pit([2, 3]).
pit([3, 2]).
pit([3, 5]).
pit([4, 1]).
pit([5, 5]).

world_width(5).
world_height(5).