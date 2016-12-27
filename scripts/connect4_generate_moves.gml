///connect4_generate_moves(state)
// Here we generate an array of available moves from the given game state.
// With Connect 4, this is the list of open columns. Here we represent them as 0-6 from left to right.
// To prevent the array from collapsing, we reserve index 0 for the size.
// Examples: [0, undefined] (empty), [6, 0, 1, 2, 4, 5, 6] (all columns other than the middle)
{
  var state = argument0;
  var moves;
  moves[0] = 0;
  moves[1] = undefined;
  // No moves possible from a win or loss
  if (!is_undefined(connect4_final_playout(state))) {
    return moves;
  }
  // Available moves are open columns (according to the top entry of each column)
  for (var i = 0; i < 7; i++) {
    if (state[@ i] == 0) {
      moves[++moves[0]] = i;
    }
  }
  // Done
  return moves;
}
