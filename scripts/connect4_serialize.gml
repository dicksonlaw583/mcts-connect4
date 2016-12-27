///connect4_serialize(state)
// -- Serialized string format
// The string format we use uses R for the negative player (red), - for empty squares and Y for the positive player (yellow)
// The first 42 characters represent the board in row-major order. The last character is the player about to make a move.
// -- Live state
// The live state format is a 43-entry array, with -1 for red, 0 for empty squares and 1 for yellow.
// The first 42 entries represent the board in row-major order. The last entry is the player about to make a move.
{
  var state = argument0,
      serialized = '';
  for (var i = 0; i <= 42; i++) {
    switch (state[@ i]) {
      case -1:
        serialized += 'R';
      break;
      case 0:
        serialized += '-';
      break;
      case 1:
        serialized += 'Y';
      break;
      default:
        show_error("Attempting to serialize invalid state.", true);
      break;
    }
  }
  return serialized;
}
