class AddProgressToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :progress, :integer
  end
end
