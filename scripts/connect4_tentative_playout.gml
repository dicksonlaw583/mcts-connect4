///connect4_tentative_playout(state)
// This script is called whenever the playout runs out of time. Here we assume a draw.
// Connect 4's tree is shallow enough for this to be virtually unused, but it is dispensable for games with higher search depths.
{
  var result;
  result[4] = undefined;
  result[3] = undefined;
  result[2] = undefined;
  result[1] = undefined;
  result[0] = 0;
  return result;
}
