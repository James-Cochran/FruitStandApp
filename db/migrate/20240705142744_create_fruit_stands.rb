class CreateFruitStands < ActiveRecord::Migration[7.1]
  def change
    create_table :fruit_stands do |t|
      t.integer :number_of_employees
      t.string :name
      t.boolean :in_stock

      t.timestamps
    end
  end
end
