require_relative 'hunting_scenario'

# == Begin game

welcome

# == Start poem

command = "say '#{$the_hunter}'"
system(command)

# == Prompt to shoot

display_duck
prompt_to_shoot

# == End game

reflect_and_exit
