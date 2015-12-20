class AddThankYouLinkToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :thank_you_link, :string
  end
end
