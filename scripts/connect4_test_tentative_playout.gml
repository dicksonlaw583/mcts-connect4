///connect4_test_tentative_playout()
{
  var state, expected, got;
  
  //Should just return tie for just about any board
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                1);
  expected = Array(0, undefined, undefined, undefined, undefined);
  got = connect4_tentative_playout(state);
  assert_equal(got, expected, "Tentative playout isn't a tie.");
}
