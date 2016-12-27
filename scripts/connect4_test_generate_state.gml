///connect4_test_generate_state()
{
  var perspective, expected_state;
  
  // Positive player (yellow) to play
  perspective = Array(0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0,
                      1, 0, 0, -1, 0, 0, 0,
                      1);
  expected_state = Array(0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0,
                         1, 0, 0, -1, 0, 0, 0,
                         1);
  assert_equal(connect4_generate_state(perspective), expected_state, "Positive state generation failed!");
  
  // Negative player (red) to play
  perspective = Array(0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0,
                      1, 0, 0, -1, 0, 0, 0,
                      -1);
  expected_state = Array(0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0,
                         0, 0, 0, 0, 0, 0, 0,
                         1, 0, 0, -1, 0, 0, 0,
                         -1);
  assert_equal(connect4_generate_state(perspective), expected_state, "Negative state generation failed!");
}
