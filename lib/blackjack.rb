def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
   sum += deal_card
 end
  print display_card_total(sum)
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
  card_total = display_card_total(number)

  until hit?(number) >= 21
    hit?(number)
    display_card_total(number)
  end
  display_card_total(number)

  end_game(card_total)
end
