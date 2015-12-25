class RemoveFinishedFromMissions < ActiveRecord::Migration
  def change
    remove_column :missions, :finished, :boolean
  end
end
