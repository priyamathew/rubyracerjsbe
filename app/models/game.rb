# class MyValidator < ActiveModel::Validator
#   def validate_max_players_have_not_been_reached
#       errors.add_to_base("This is only a two player game.") unless players.size < 2
#   end
# end

class Game < ActiveRecord::Base
  
  validate :validate_max_users_have_not_been_reached
  has_many :games_players
  has_many :players, through: :games_players
  has_one  :player

  def validate_max_users_have_not_been_reached
    errors.add(:players, "This is a 2 player game.") unless players.size < 3
  end

end

