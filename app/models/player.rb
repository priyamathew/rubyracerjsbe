# class MyValidator < ActiveModel::Validator
#   def validate_max_players_have_not_been_reached
#       errors.add_to_base("This is only a two player game.") unless players.size < 2
#   end
# end


class Player < ActiveRecord::Base
  # include ActiveModel::Validations
  # validates_with MyValidator

  has_many :games_players
  has_many :games, through: :games_players
  validates :name, uniqueness: true
  
end

