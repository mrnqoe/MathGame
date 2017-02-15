require 'pry'
require './player'
require './game'
require './question'

newGame = MathGame::Game.new
gameOn = true
turn = 0
while gameOn
  turn += 1
  puts '----NEW TURN----'
  quest = MathGame::Question.new
  if turn%2 == 0
    current_player = newGame.player2
  else
    current_player = newGame.player1
  end
  puts "Your turn #{current_player.name} !"
  answ = quest.evalutateAsw(current_player,gets.chomp.to_i)
  if answ
    current_player.points +=1
    puts 'Right answer'
  else
    current_player.lives -= 1
    puts 'Wrong answer'
  end
  puts "#{current_player.name} has #{current_player.points} points"
  puts "and #{current_player.lives} lives left"
  gameOn = false unless current_player.lives > 0
end
puts '-------GAME OVER-------'
puts "#{current_player.name} lost"
puts 'Goodbye'
