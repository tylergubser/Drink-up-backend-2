class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :price
      t.belongs_to :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
