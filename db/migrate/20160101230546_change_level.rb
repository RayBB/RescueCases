class ChangeLevel < ActiveRecord::Migration
  def change
  	change_table :missions do |t|
      t.rename :level, :floor
    end
  end
end
