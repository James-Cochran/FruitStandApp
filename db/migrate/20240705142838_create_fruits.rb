class CreateFruits < ActiveRecord::Migration[7.1]
  def change
    create_table :fruits do |t|
      t.references :fruit_stand, null: false, foreign_key: true
      t.string :name
      t.integer :quantity
      t.boolean :is_citrus

      t.timestamps
    end
  end
end
