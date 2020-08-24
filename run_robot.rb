require './lib/simulator'

simulator = Simulator.new
puts "# ROBOT SIMULATOR"
puts "# Valid commands are: PLACE X,Y,NORTH|SOUTH|EAST|WEST, MOVE, LEFT, RIGHT, REPORT or EXIT or QUIT "

command = gets.chomp

while command
  command.strip!
  if command.downcase == "exit" || command.downcase == "quit" || command.downcase == "q"
    puts "# Bye"
    exit
  else
    output = simulator.execute(command)
    command = gets.chomp
  end
end