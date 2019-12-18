class AddAwayteamToMatch < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :awayteam_id, :integer
  end
end
