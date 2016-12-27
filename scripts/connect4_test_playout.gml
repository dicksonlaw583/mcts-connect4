///connect4_test_playout()
{
  var state, got;
  
  //Test 1: Should finish playing out in a reasonable amount of time
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                1);
  got = connect4_playout(state, 250);
  assert_is_defined(got, "Didn't finish playing blank board in reasonable amount of time!");
  
  //Test 2: Should finish playing a done board right away
  state = Array(1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1);
  got = connect4_playout(state, 0);
  assert_equal(got, Array(0, undefined, undefined, undefined, undefined), "Didn't finish playing done board right away correctly!");
  
  //Test 3: Shouldn't finish playing out an empty board right away
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                1);
  got = connect4_playout(state, 0);
  assert_isnt_defined(got, "Finished playing empty board right away!");
}
