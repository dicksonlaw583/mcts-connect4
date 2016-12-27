///connect4_test_serialize()
{
  var state, got, expected;
  
  //Test 1: Opening board
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                1);
  expected = "-------" +
             "-------" +
             "-------" +
             "-------" +
             "-------" +
             "-------" + "Y";
  got = connect4_serialize(state);
  assert_equal(got, expected, "Failed serialization for opening board!");
  
  //Test 2: Mid-game board
  state = Array(0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0,
                -1, 0, 0, 0, 0, 1, 0,
                1, 1, -1, 1, -1, 1, -1,
                1, -1, 1, -1, 1, -1, -1,
                -1);
  expected = "-------" +
             "-------" +
             "-------" +
             "R----Y-" +
             "YYRYRYR" +
             "YRYRYRR" + "R";
  got = connect4_serialize(state);
  assert_equal(got, expected, "Failed serialization for mid-game board!");
  
  //Test 3: End-game board
  state = Array(1, -1, 0, 1, 1, 0, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1, -1, 1, 1, 1, -1, 1,
                -1, 1, -1, -1, -1, 1, -1,
                1);
  expected = "YR-YY-Y" +
             "RYRRRYR" +
             "YRYYYRY" +
             "RYRRRYR" +
             "YRYYYRY" +
             "RYRRRYR" + "Y";
  got = connect4_serialize(state);
  assert_equal(got, expected, "Failed serialization for end-game board!");
}
