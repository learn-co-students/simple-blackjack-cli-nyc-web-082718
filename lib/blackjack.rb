def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 return rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
    puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
end

def hit?(current_hand)
  prompt_user
  response = get_user_input
  until response == "s" || response == "h"
  invalid_command
  prompt_user
  response = get_user_input
end
  if response == "s"
   return current_hand
  elsif response == "h"
    new_hand = current_hand + deal_card
    return new_hand
end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  hand = initial_round
  until hand > 21
  hand = hit?(hand)
  display_card_total(hand)
end
  end_game(hand)
end