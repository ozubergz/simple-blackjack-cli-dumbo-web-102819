def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do
    num = deal_card #deal_card method
    total += num
  end
 display_card_total(total)
 total
end

def hit?
  prompt_user
  input = get_user_input
  if input == 's'
    sum
  elsif input == 'h'
    sum += deal_card
    display_card_total(sum)
    sum
  else
    invalid_command
    hit?(sum)
  end
end

def invalid_command
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
