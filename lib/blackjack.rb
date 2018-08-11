def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 'h'
    card_total = card_total += deal_card
  elsif input != 'h' && input != 's'
    puts "Please enter a valid command."
    prompt_user
  end
  card_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  counter = initial_round
  until counter > 21
    counter = hit?(counter)
    display_card_total(counter)
  end
end_game(counter)
end
