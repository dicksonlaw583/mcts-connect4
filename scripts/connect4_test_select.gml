///connect4_test_select()
{
  var expected, got, tree;
  
  // Single node without children: pick it with move undefined
  tree = MctsNode("------------------------------------------R", 0, 0, undefined, undefined, undefined);
  expected = Array(undefined, tree);
  got = connect4_select(tree);
  assert_equal(got, expected, "Failed to select lone node!");
  
  // Single node with an undefined-weight child: pick it with the correct move
  tree = MctsNode("------------------------------------------R", 0, 0, undefined, Array(
    4, MctsNode("---------------------------------------R--Y", 1, 1, 5, undefined, undefined),
    5, MctsNode("----------------------------------------R-Y", 0, 1, 2, undefined, undefined),
    6, MctsNode("-----------------------------------------RY", 1, 1, undefined, undefined, undefined)
  ), undefined);
  expected = Array(6, MctsNode("-----------------------------------------RY", 1, 1, undefined, undefined, undefined));
  got = connect4_select(tree);
  assert_equal(got, expected, "Failed to select undefined-weight child!");
  
  // Single node with children all weighted: pick it with the correct move
  tree = MctsNode("------------------------------------------R", 0, 0, undefined, Array(
    4, MctsNode("---------------------------------------R--Y", 0, 1, 2, undefined, undefined),
    5, MctsNode("----------------------------------------R-Y", 2, 2, 5, undefined, undefined),
    6, MctsNode("-----------------------------------------RY", 1, 1, 4, undefined, undefined)
  ), undefined);
  expected = Array(5, MctsNode("----------------------------------------R-Y", 2, 2, 5, undefined, undefined));
  got = connect4_select(tree);
  assert_equal(got, expected, "Failed to select defined-weight child!");
}
