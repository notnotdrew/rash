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

def clear_screen
  puts "\e[H\e[2J"
end

def instructions
  sleep 0.5
  puts 'Your goal is to shoot the duck before '\
       "Ogden Nash's poem convinces you that it's a silly thing to do."
  sleep 1.25
  puts '--Ready? Press enter to start the poem.'
end

def greet_user
  "Hello, #{ENV["USER"].capitalize}.\n\n".chars.each do |l|
    print l
    sleep 0.1
  end
  sleep 0.2
end

def welcome
  clear_screen
  greet_user
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
  adieu
end

def adieu
  puts 'Well.'
  sleep 0.75
  print 'You got it.'
  sleep 1
  print " Good job.\n\n"
  sleep 1
end
