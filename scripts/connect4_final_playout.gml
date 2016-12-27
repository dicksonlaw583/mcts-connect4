///connect4_final_playout(state)
// Here we use an array in this form to represent a winning game:
// [<winner>, <piece 1>, <piece 2>, <piece 3>, <piece 4>]
// Where the winner is -1 for red and 1 for yellow, and the pieces are locations in top-down row major order (0 = top-left, 6 = top-right, 35 = bottom-left, 41 = bottom-right).
// Tie games look like this:
// [0, undefined, undefined, undefined, undefined]
// Returning undefined means the game isn't over yet
{
  var state = argument0,
      offset, result;
  // Check rows
  for (var row = 5; row >= 0; row--) {
    offset = row*7;
    for (var col = 0; col <= 3; col++) {
      if (state[@ offset+col] == state[@ offset+col+1] && state[@ offset+col] == state[@ offset+col+2] && state[@ offset+col] == state[@ offset+col+3] && state[@ offset+col] != 0) {
        result[4] = offset+col+3;
        result[3] = offset+col+2;
        result[2] = offset+col+1;
        result[1] = offset+col;
        result[0] = state[@ offset+col];
        return result;
      }
    }
  }
  // Check columns
  for (var row = 2; row >= 0; row--) {
    offset = row*7;
    for (var col = 0; col <= 6; col++) {
      if (state[@ offset+col] == state[@ offset+col+7] && state[@ offset+col] == state[@ offset+col+14] && state[@ offset+col] == state[@ offset+col+21] && state[@ offset+col] != 0) {
        result[4] = offset+col+21;
        result[3] = offset+col+14;
        result[2] = offset+col+7;
        result[1] = offset+col;
        result[0] = state[@ offset+col];
        return result;
      }
    }
  }
  // Check diagonals
  for (var row = 2; row >= 0; row--) {
    offset = row*7;
    for (var col = 0; col <= 3; col++) {
      // NW-SE diagonal
      if (state[@ offset+col] == state[@ offset+col+7+1] && state[@ offset+col] == state[@ offset+col+14+2] && state[@ offset+col] == state[@ offset+col+21+3] && state[@ offset+col] != 0) {
        result[4] = offset+col+24;
        result[3] = offset+col+16;
        result[2] = offset+col+8;
        result[1] = offset+col;
        result[0] = state[@ offset+col];
        return result;
      }
      // SW-NE diagonal
      if (state[@ offset+col+3] == state[@ offset+col+21] && state[@ offset+col+3] == state[@ offset+col+3+14-2] && state[@ offset+col+3] == state[@ offset+col+3+7-1] && state[@ offset+col+3] != 0) {
        result[4] = offset+col+3;
        result[3] = offset+col+9;
        result[2] = offset+col+15;
        result[1] = offset+col+21;
        result[0] = state[@ offset+col+3];
        return result;
      }
    }
  }
  // If any of the top slots aren't filled, it's not over yet.
  for (var col = 0; col <= 6; col++) {
    if (state[@ col] == 0) {
      return undefined;
    }
  }
  // The whole board is filled without a win, tie.
  result[4] = undefined;
  result[3] = undefined;
  result[2] = undefined;
  result[1] = undefined;
  result[0] = 0;
  return result;
}
