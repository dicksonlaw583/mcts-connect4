///connect4_test()
{
  var start_time = current_time;
  connect4_test_generate_state();
  connect4_test_generate_moves();
  connect4_test_final_playout();
  connect4_test_apply_move();
  connect4_test_serialize();
  connect4_test_deserialize();
  connect4_test_select();
  connect4_test_expand();
  connect4_test_reweight();
  connect4_test_playout();
  connect4_test_tentative_playout();
  connect4_test_interpret_playout();
  show_debug_message("Connect 4 tests completed in " + string(current_time-start_time) + "ms.");
}
