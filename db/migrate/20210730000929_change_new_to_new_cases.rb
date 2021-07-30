class ChangeNewToNewCases < ActiveRecord::Migration[5.2]
  def change
    rename_column :covids, :new, :new_cases
  end
end
