class GamesPlayers < ActiveRecord::Migration
  def change
    create_table :games_players do |t|
      t.belongs_to :game
      t.belongs_to :player

      t.timestamps
    end
  end
end


# class Game
#   # belongs_to players
#   belongs_to :player_1, :class => Player, :source => :game_id
#   belongs_to :player_2, :class => Player, :source => :game_id
# end 

# class Player
#   # has_many games
#   has_many :games
# end

# Game.create(name: "Wheeee!", :player_1 => Player.create(:name), :player_2 => Player.create(:name))

# Game.winner = player.find(2)

# player_1.games.where(winner: @player_1.id)

