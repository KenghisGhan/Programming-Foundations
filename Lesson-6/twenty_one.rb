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
    return 'Ace and unknown card'
  when 'K'
    return 'King and unknown card'
  when 'Q'
    return 'Queen and unknown card'
  when 'J'
    return 'Jack and unknown card'
  else
    return "#{known_card[1]} and unknown card"
  end
end

def player_hand_string(hand)
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

  result = ''
  if cards.size == 2
    return cards.join(" and ")
  else
    result = cards.map do |card|
      if cards[-1] == card
        "and #{card}"
      else
        "#{card}, "
      end
    end
  end
  result.join
end

def total_cards(hand)
  sum = 0
  values = hand.map {|card| card[1]}.sort

  values.each do |value|
    if value == 'A'
      if sum + 11 > 21
        sum += 1
      else
        sum += 11
      end
    elsif value.to_i != 0
      sum += value.to_i
    else
      sum += 10
    end
  end
  sum
end

def busted?(total)
  return true if total > 21
  false
end


loop do
  prompt "Welcome to Twenty-One!"

  deck = [['H', 'A'], ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], ['H', '8'], ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'],
          ['S', 'A'], ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'], ['S', 'J'], ['S', 'Q'], ['S', 'K'],
          ['D', 'A'], ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', 'J'], ['D', 'Q'], ['D', 'K'],
          ['C', 'A'], ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], ['C', 'J'], ['C', 'Q'], ['C', 'K']]
  
  dealer_hand = deal_hand!(deck)
  player_hand = deal_hand!(deck)

  answer = nil
  loop do
    prompt "Dealer has: #{dealer_hand_player_turn_string(dealer_hand)}"
    prompt "You have: #{player_hand_string(player_hand)}"
    prompt 'hit or stay?'
    answer = gets.chomp
    break if answer == 'stay'
    deal_card!(deck, player_hand)
    break if busted?(total_cards(player_hand))
  end

  if busted?(total_cards(player_hand))
    prompt "You busted! Game over"
  else
    prompt "You chose to stay!"
  end
end