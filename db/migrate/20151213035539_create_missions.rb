class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :game
      t.string :location
      t.integer :level
      t.string :rescue_link
      t.string :rescued_link
      t.text :notes
      t.boolean :finished

      t.timestamps
    end
  end
end
