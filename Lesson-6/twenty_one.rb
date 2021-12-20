# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

require 'pry'

def prompt(string)
  puts "=> #{string}"
end

def deal_hand!(deck)
  hand = []
  hand << deck.delete(deck.sample) << deck.delete(deck.sample)
end

def deal_card!(deck, hand)
  hand << deck.delete(deck.sample)
end

def dealer_hand_player_turn_string(hand)
  known_card = hand[0]
  case known_card[1]
  when 'A'
    'Ace and unknown card'
  when 'K'
    'King and unknown card'
  when 'Q'
    'Queen and unknown card'
  when 'J'
    'Jack and unknown card'
  else
    "#{known_card[1]} and unknown card"
  end
end

def hand_string(hand)
  cards = hand.map do |card|
    case card[1]
    when 'A'
      'Ace'
    when 'K'
      'King'
    when 'Q'
      'Queen'
    when 'J'
      'Jack'
    else
      card[1]
    end
  end

  last_card = false

  return cards.join(' and ') if cards.size == 2

  result = cards.map do |card|
    if cards[-1] == card && last_card == false
      last_card == true
      "and #{card}"
    else
      "#{card}, "
    end
  end
  result.join
end

def total_cards(hand)
  sum = 0
  values = hand.map { |card| card[1] }

  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i != 0
      sum += value.to_i
    else
      sum += 10
    end
  end

  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(total)
  total > 21
end

def display_hands(dealer_hand, player_hand)
  prompt "Dealer's hand: #{hand_string(dealer_hand)} (#{total_cards(dealer_hand)})"
  prompt "Your hand: #{hand_string(player_hand)} (#{total_cards(player_hand)})"
end

def display_result(dealer_total, player_total)
  if dealer_total > player_total
    prompt 'Dealer wins!'
  elsif player_total > dealer_total
    prompt 'Player wins!'
  else
    prompt 'It\'s a tie!'
  end
end

def play_again?
  prompt 'Play again? (y or n)'
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  system 'clear'
  prompt "Welcome to Twenty-One!"

  deck = [['H', 'A'], ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], ['H', '8'], ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'],
          ['S', 'A'], ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'], ['S', 'J'], ['S', 'Q'], ['S', 'K'],
          ['D', 'A'], ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', 'J'], ['D', 'Q'], ['D', 'K'],
          ['C', 'A'], ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], ['C', 'J'], ['C', 'Q'], ['C', 'K']]

  dealer_hand = deal_hand!(deck)
  player_hand = deal_hand!(deck)

  # player loop
  answer = nil
  player_bust = false
  player_total = total_cards(player_hand)
  loop do
    prompt "Dealer has: #{dealer_hand_player_turn_string(dealer_hand)}"
    prompt "You have: #{hand_string(player_hand)}"
    prompt 'hit or stay?'
    answer = gets.chomp
    break if answer == 'stay'

    deal_card!(deck, player_hand)
    player_total = total_cards(player_hand)
    break if busted?(player_total)
  end

  if busted?(player_total)
    prompt 'You busted! Game over'
    player_bust = true
  else
    prompt 'You chose to stay!'
  end

  # dealer loop
  dealer_total = total_cards(dealer_hand)
  loop do
    break if player_bust

    break if busted?(dealer_total) || dealer_total >= 17

    deal_card!(deck, dealer_hand)
    dealer_total = total_cards(dealer_hand)
  end

  if busted?(dealer_total) && player_bust == false
    prompt 'Dealer busted, you win!'
  else
    display_hands(dealer_hand, player_hand)
    display_result(dealer_total, player_total)
  end

  break unless play_again?
end

prompt 'Thanks for playing!'
