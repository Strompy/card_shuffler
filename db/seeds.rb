# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.delete_all

ranks = {
          '2' => 2,
          '3' => 3,
          '4' => 4,
          '5' => 5,
          '6' => 6,
          '7' => 7,
          '8' => 8,
          '9' => 9,
          '10' => 10,
          'J' => 11,
          'Q' => 12,
          'K' => 13,
          'A' => 14
        }
suits = ['hearts', 'spades', 'diamonds', 'clubs']

suits.each do |suit|
  ranks.each do |rank, value|
    Card.create(suit: suit, rank: rank, value: value)
  end
  unless Rails.env.test?
    puts "Created #{suit}"
  end
end

unless Rails.env.test?
  puts "#{Card.count} cards created"
end
