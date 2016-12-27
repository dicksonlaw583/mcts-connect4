///connect4_test_final_playout()
{
  var state, expected, got;
  
  // Positive player (yellow) win, SW-NE diagonal
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 1,
                0, 0, 0, 0, 0, 1, -1,
                0, 0, 0, 0, 1, -1, -1,
                1, 1, 0, 1, -1, -1, -1,
                -1);
  expected = Array(1, 38, 32, 26, 20);
  got = connect4_final_playout(state);
  assert_equal(got, expected, "Positive player win (SW-NE diagonal) gives wrong final playout!");
  
  // Positive player (yellow) win, row
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 1, 1, 1, 1,
                -1, -1, 0, -1, 1, -1, 1,
                -1, -1, 0, 1, -1, 1, -1,
                -1);
  expected = Array(1, 24, 25, 26, 27);
  got = connect4_final_playout(state);
  assert_equal(got, expected, "Positive player win (row) gives wrong final playout!");
  
  // Negative player (red) win, column
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, -1, 0, 0, 0,
                0, 0, 0, -1, 0, 0, 0,
                0, 0, 0, -1, 0, 0, 0,
                0, 0, 1, -1, 1, 1, 0,
                1);
  expected = Array(-1, 17, 24, 31, 38);
  got = connect4_final_playout(state);
  assert_equal(got, expected, "Negative player win (column) gives wrong final playout!");
  
  // Negative player (red) win, NW-SE diagonal
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, -1, 0, 0, 0, 0,
                0, 0, 1, -1, 0, 0, 0,
                0, 0, 1, 1, -1, 0, 0,
                0, 0, 1, 1, 1, -1, 0,
                0, 0, -1, -1, 1, -1, 1,
                1);
  expected = Array(-1, 9, 17, 25, 33);
  got = connect4_final_playout(state);
  assert_equal(got, expected, "Negative player win (NW-SE diagonal) gives wrong final playout!");
  
  // Draw
  state = Array(1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1);
  expected = Array(0, undefined, undefined, undefined, undefined);
  got = connect4_final_playout(state);
  assert_equal(got, expected, "Draw gives wrong final playout!");
  
  // Non-final state gives undefined
  state = Array(1, 0, 1, 1, 1, 0, 1,
                -1, 0, -1, -1, -1, 0, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                -1);
  assert_isnt_defined(connect4_final_playout(state), "Non-final state gave a defined final playout!");
}
