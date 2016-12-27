///connect4_test_interpret_playout()
{
  var node, expected, got;
  
  // Should regard a positive win with negative to play as a positive win
  node = MctsNode(
    "-------" +
    "-------" +
    "Y------" +
    "Y------" +
    "Y------" +
    "Y-R-RRR" + "R",
  0, 0, undefined, undefined, 4);
  expected = 1;
  got = connect4_interpret_playout(node, Array(1, 14, 21, 28, 35));
  assert_equal(got, expected, "Should regard a positive win with negative to play as a positive win");
  
  // Should regard a negative win with positive to play as a negative win
  node = MctsNode(
    "-------" +
    "-------" +
    "-------" +
    "Y------" +
    "Y------" +
    "Y-YRRRR" + "Y",
  0, 0, undefined, undefined, 4);
  expected = 1;
  got = connect4_interpret_playout(node, Array(-1, 38, 39, 40, 41));
  assert_equal(got, expected, "Should regard a negative win with positive to play as a negative win");
  
  // Should regard a draw with positive to play as a draw
  node = MctsNode(
    "YRYYYRY" +
    "RYRRRYR" +
    "YRYYYRY" +
    "RYRRRYR" +
    "YRYYYRY" +
    "RYRRRYR" + "Y",
  0, 0, undefined, undefined, 4);
  expected = 0;
  got = connect4_interpret_playout(node, Array(0, undefined, undefined, undefined, undefined));
  assert_equal(got, expected, "Should regard a draw with positive to play as a draw");
  
  // Should regard a draw with negative to play as a draw
  node = MctsNode(
    "YRYYYRY" +
    "RYRRRYR" +
    "YRYYYRY" +
    "RYRRRYR" +
    "YRYYYRY" +
    "RYRRRYR" + "R",
  0, 0, undefined, undefined, 4);
  expected = 0;
  got = connect4_interpret_playout(node, Array(0, undefined, undefined, undefined, undefined));
  assert_equal(got, expected, "Should regard a draw with negative to play as a draw");
  
  // Should regard a negative win with negative to play as a positive loss
  node = MctsNode(
    "-------" +
    "-------" +
    "-------" +
    "Y------" +
    "Y------" +
    "Y-YRRR-" + "R",
  0, 0, undefined, undefined, 4);
  expected = -1;
  got = connect4_interpret_playout(node, Array(-1, 38, 39, 40, 41));
  assert_equal(got, expected, "Should regard a positive win with negative to play as a positive win");
  
  // Should regard a positive win with positive to play as a negative loss
  node = MctsNode(
    "-------" +
    "-------" +
    "-------" +
    "Y------" +
    "Y------" +
    "Y-R-RRR" + "Y",
  0, 0, undefined, undefined, 4);
  expected = -1;
  got = connect4_interpret_playout(node, Array(1, 14, 21, 28, 35));
  assert_equal(got, expected, "Should regard a negative win with positive to play as a negative win");
}
