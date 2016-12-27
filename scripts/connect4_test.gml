///connect4_test()
{
  var start_time = current_time;
  connect4_test_generate_state();
  show_debug_message("Connect 4 tests completed in " + string(current_time-start_time) + "ms.");
}
