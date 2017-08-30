def select_cards(possible_cards, hand)

  possible_cards.each do |current_card|
    # puts hand.count
    if hand.count >= 3
      return hand

    else print "Do you want to pick up #{current_card}?"
      answer = gets.chomp

      if answer.downcase == 'y'
        hand << current_card
      elsif answer.downcase == 'n'
        select_cards(possible_cards, hand)

      end
    end

  end

  return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
