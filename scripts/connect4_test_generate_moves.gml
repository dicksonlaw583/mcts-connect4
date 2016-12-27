///connect4_test_generate_moves()
{
  var state, got_moves, expected_moves;
  
  // No moves for a win/loss
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                -1, 0, 0, 0, 0, 0, 0,
                -1, 0, 0, 0, 0, 0, 0,
                -1, 0, 0, 0, 0, 0, 0,
                -1, 0, 1, 0, 1, 1, 0,
                1);
  expected_moves = Array(0, undefined);
  got_moves = connect4_generate_moves(state);
  assert_equal(got_moves, expected_moves, "Got moves for a win/loss!");
  
  // No moves during a draw
  state = Array(1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1);
  expected_moves = Array(0, undefined);
  got_moves = connect4_generate_moves(state);
  assert_equal(got_moves, expected_moves, "Got moves for a draw!");
  
  // All moves for opening board
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                1);
  expected_moves = Array(7, 0, 1, 2, 3, 4, 5, 6);
  got_moves = connect4_generate_moves(state);
  assert_equal(got_moves[0], expected_moves[0], "Wrong number of moves for opening board!");
  for (var i = 1; i <= expected_moves[0]; i++) {
    assert_contains(got_moves, expected_moves[i], "Can't find the move specified for opening board!");
  }
  
  // Plugged columns
  state = Array(1, 0, 0, 0, -1, 0, 0,
                1, 0, 0, 0, 1, 0, 0,
                1, 0, 0, 0, -1, 0, 0,
                -1, 0, 0, 0, 1, 0, 0,
                -1, 0, 0, 0, 1, 0, 0,
                -1, 0, 0, 0, -1, 0, 0,
                1);
  expected_moves = Array(5, 1, 2, 3, 5, 6);
  got_moves = connect4_generate_moves(state);
  assert_equal(got_moves[0], expected_moves[0], "Wrong number of moves for plugged columns board!");
  for (var i = 1; i <= expected_moves[0]; i++) {
    assert_contains(got_moves, expected_moves[i], "Can't find the move specified for plugged columns board!");
  }
  
  // Almost full board
  state = Array(1, 0, 1, 1, 1, 0, 1,
                -1, 0, -1, -1, -1, 0, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                -1);
  expected_moves = Array(2, 1, 5);
  got_moves = connect4_generate_moves(state);
  assert_equal(got_moves[0], expected_moves[0], "Wrong number of moves for almost full board!");
  for (var i = 1; i <= expected_moves[0]; i++) {
    assert_contains(got_moves, expected_moves[i], "Can't find the move specified for almost full board!");
  }
}
