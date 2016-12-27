///connect4_test_expand()
{
  var expected_tree, expected, got, node;
  
  //Test: Expanding empty board
  node = MctsNode("------------------------------------------R", 0, 0, undefined, undefined, undefined);
  expected_tree = MctsNode("------------------------------------------R", 0, 0, undefined, Array(
    0, MctsNode("-----------------------------------R------Y", 0, 0, undefined, undefined, undefined),
    1, MctsNode("------------------------------------R-----Y", 0, 0, undefined, undefined, undefined),
    2, MctsNode("-------------------------------------R----Y", 0, 0, undefined, undefined, undefined),
    3, MctsNode("--------------------------------------R---Y", 0, 0, undefined, undefined, undefined),
    4, MctsNode("---------------------------------------R--Y", 0, 0, undefined, undefined, undefined),
    5, MctsNode("----------------------------------------R-Y", 0, 0, undefined, undefined, undefined),
    6, MctsNode("-----------------------------------------RY", 0, 0, undefined, undefined, undefined),
  ), undefined);
  expected = MctsNode("-----------------------------------R------Y", 0, 0, undefined, undefined, undefined);
  got = connect4_expand(node);
  assert_equal(got, expected, "Failed to expand empty board!");
  assert_equal(node, expected_tree, "Expanding empty board gave the wrong tree!");
  
  //Test: Expanding finished board
  node = MctsNode("YRYYYRY" +
    "RYRRRYR" +
    "YRYYYRY" +
    "RYRRRYR" +
    "YRYYYRY" +
    "RYRRRYR" + "Y",
  0, 0, undefined, undefined, undefined);
  expected_tree = MctsNode("YRYYYRY" +
    "RYRRRYR" +
    "YRYYYRY" +
    "RYRRRYR" +
    "YRYYYRY" +
    "RYRRRYR" + "Y",
  0, 0, undefined, undefined, undefined);
  expected = undefined;
  got = connect4_expand(node);
  assert_equal(got, expected, "Failed to expand done board!");
  assert_equal(node, expected_tree, "Expanding done board gave the wrong tree!");
}
