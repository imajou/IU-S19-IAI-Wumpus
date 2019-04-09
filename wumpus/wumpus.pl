% Innopolis University, 2019
% [S19] Introduction to Artificial Intelligence, Assignment 1, Task 3
% Gleb Petrakov | g.petrakov@innopolis.ru

% This program implements naive Wumpus World on Prolog
% Changes of the Wumpus World understanding and different tests could be found in Task 4 of this assignment

% Necessary rules are:
% agent([_, _]).     % coordinates of agent
% wumpus([_, _]).    % coordinates of wumpus
% pit([_, _]).       % coordinates of pit
% agent([_, _]).     % coordinates of gold
% world_width(_).    % world width (X-coordinate)
% world_height(_).   % world height (Y-coordinate)
%
% These rules defines the Wumpus World environment
% Different environments can be found in Task 4 of this assignment


% Please, define needed world file here
:- [world1].


% Check, if it is available cell
pathAvailable(X, Y) :-
    world_width(Width),     % Retrieve world width
    world_height(Height),   % Retrieve world height
    between(1, Width, X),   % Check if X is valid
    between(1, Height, Y).  % Check if Y is valid

% Attempt to shoot Wumpus
shoot([X, Y], [ShotX, ShotY]) :-
    (ShotX = X, (ShotY is Y + 1; ShotY is Y - 1);   % Shoots vertical
    ShotY = Y, (ShotX is X + 1; ShotX is X - 1)),   % Shoots horizontal
    wumpus([ShotX, ShotY]).

% Backtracks the agent possible moves through the world
move([X, Y], [MoveX, MoveY]) :-
    pathAvailable(X, Y),                            % Checks if cell coordinate is available to stand on
    (MoveX = X, (MoveY is Y + 1; MoveY is Y - 1);   % Backtracks vertical moves
    MoveY = Y, (MoveX is X + 1; MoveX is X - 1)),   % Backtracks horizontal moves
    pathAvailable(MoveX, MoveY),                    % Checks if new cell is available to stand on
    \+ wumpus([MoveX, MoveY]),                      % Checks if there is no Wumpus
    \+ pit([MoveX, MoveY]).                         % Checks if there is no pit

% Recursively backtrack possible paths to gold, keeping list of visited cells
findPath([Current | NotVisited], Visited) :-
    gold(Current) -> NotVisited = [];           % If there is gold - path found
    NotVisited = [New | _],                     % Else, evaluate new not visited list
    (move(Current, New);                        % Move to the next cell
    shoot(Current, New)),                       % Or shoot Wumpus
    \+ member(New, Visited),                    % Check, if move has not already been done
    append(Visited, [Current], NewVisited),     % Mark the move as visited
    findPath(NotVisited, NewVisited).           % Reccur

% Play the game
init([Start | Path]) :-
    agent(Start),                   % Starting point as path head
    findPath([Start | Path], []).   % Find path
