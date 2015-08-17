require_relative 'hunting_scenario'

# == Begin game

welcome

# == Start poem

command = "say '#{$the_hunter}'"
say_poem = IO.popen(command)

# == Prompt to shoot

display_duck
prompt_to_shoot

# == End game

Process.kill(15, say_poem.pid)
reflect_and_exit
