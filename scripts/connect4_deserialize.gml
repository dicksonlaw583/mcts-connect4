///connect4_deserialize(statestr)
// The string format we use uses R for the negative player (red), - for empty squares and Y for the positive player (yellow)
// The first 42 characters represent the board in row-major order. The last character is the player about to make a move.
// -- Live state
// The live state format is a 43-entry array, with -1 for red, 0 for empty squares and 1 for yellow.
// The first 42 entries represent the board in row-major order. The last entry is the player about to make a move.
{
  var statestr = argument0,
      state;
  for (var i = 0; i <= 42; i++) {
    switch (string_char_at(statestr, i+1)) {
      case 'R':
        state[i] = -1;
      break;
      case '-':
        state[i] = 0;
      break;
      case 'Y':
        state[i] = 1;
      break;
      default:
        show_error("Deserializing invalid state string: " + statestr, true);
      break;
    }
  }
  return state;
}
