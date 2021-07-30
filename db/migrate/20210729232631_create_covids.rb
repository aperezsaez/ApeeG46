class CreateCovids < ActiveRecord::Migration[5.2]
  def change
    create_table :covids do |t|
      t.date :day
      t.integer :total_cases
      t.integer :deceaseds
      t.integer :actives
      t.integer :new

      t.timestamps
    end
  end
end
