class ChangeDayToBeDatetime < ActiveRecord::Migration[5.2]
  def up
    change_column :covids, :day, :datetime
  end
  def down
    change_column :covids, :day, :date
  end
end
