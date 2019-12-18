class AddAwayteamToMatches < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :matches, :teams, column: :awayteam_id
  end
end
