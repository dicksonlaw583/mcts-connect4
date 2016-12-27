///connect4_apply_move(@state, move)
// Here we make apply a move in-place on the given state, returning whether the move was legal.
// The AI will never make an illegal move if the move generator is properly done, the return value is mainly for handling player input.
{
  var state = argument0,
      move = argument1,
      insert_at = move;
  // Check whether the top cell of the column is still open, return false if not
  if (move < 0 || move > 6 || state[@ move] != 0) {
    return false;
  }
  // Add a token and push it down
  repeat (5) {
    if (state[@ insert_at+7] == 0) {
      insert_at += 7;
    }
  }
  // Set the token slot
  state[@ insert_at] = state[@ 42];
  // It is now the other player's turn (-1 = red, 1 = yellow)
  state[@ 42] = -state[@ 42];
  // Move successful
  return true;
}
