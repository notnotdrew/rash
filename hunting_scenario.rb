$the_hunter = <<-OGDEN_NASH
The hunter crouches in his blind\n
Neath camouflage of every kind\n
And conjures up a quacking noise\n
To lend allure to his decoys\n
This grown-up man, with pluck and luck\n
is hoping to outwit a duck.
OGDEN_NASH

$duck = <<-DUCK
############__---~~~~~|~~~~~--__#############\n
########.-~~          |          ~~-.########\n
#####.-~     .-~~~~-. |              ~-.#####\n
####/       {  o     }|                 \\####\n
###/        /       / |                  \\###\n
##|        `--r'   {  | ,___.-',          |##\n
##|          /      ~-|         ',        |##\n
##|---------{---------|----------'--------|##\n
##|         \\         |         /         |##\n
##|          \\        |        /          |##\n
###\\         ~ ~~~~~~~|~~~~~~~~~ ~       /###\n
####\\       ~ ~ ~ ~ ~ | ~ ~ ~ ~ ~ ~     /####\n
#####`-_     ~ ~ ~ ~ ~|~ ~ ~ ~ ~ ~    _-'####\n
########`-__    ~ ~ ~ | ~ ~ ~ ~   __-'#######\n
############~~---_____|_____---~~############\n
DUCK

def instructions
  puts 'Your goal is to shoot the duck before '\
       "Ogden Nash's poem convinces you to do otherwise.\n"\
       '--Ready? Press enter to start the poem.'
end

def clear_screen
  puts "\e[H\e[2J"
end

def welcome
  clear_screen

  instructions
  gets
end

def display_duck
  puts $duck
end

def prompt_to_shoot
  puts 'QUICK!! Hit enter to shoot the duck!'
  gets
end

def reflect_and_exit
  clear_screen
  puts 'Well.'
  sleep 0.5
  print 'You got it.'
  sleep 1
  print " Good job.\n\n"
end
