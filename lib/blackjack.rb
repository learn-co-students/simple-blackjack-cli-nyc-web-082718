def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
   sum += deal_card
 end
  display_card_total(sum)
  return sum

end

def hit?(number)
  prompt_user
  answer = get_user_input
  if answer == "h"
    sum = number += deal_card
    return sum

  elsif answer == "s"
    sum = number
    return sum

  else invalid_command
    return
  end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round

  until number>21
    number = hit?(number)
    display_card_total(number)
  end

  end_game(number)
end
