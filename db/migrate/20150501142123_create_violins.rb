class CreateViolins < ActiveRecord::Migration
  def change
    create_table :violins do |t|
      t.string :maker
      t.integer :price

      t.timestamps null: false
    end
  end
end
