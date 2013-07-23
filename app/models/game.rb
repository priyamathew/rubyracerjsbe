class Game < ActiveRecord::Base
  has_many :games_players
  has_many :players, through: :games_players

  # Remember to create a migration!
end
