class CreateHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :holidays do |t|
      t.string :name
      t.string :date
      t.integer :year_found

      t.timestamps
    end
  end
end
