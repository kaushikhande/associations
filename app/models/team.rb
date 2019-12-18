class Team < ApplicationRecord
  has_many :home_matches, class_name: :Match, foreign_key: :hometeam_id
  has_many :away_matches, class_name: :Match, foreign_key: :awayteam_id
end
