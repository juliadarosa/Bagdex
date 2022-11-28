class CreateBagmons < ActiveRecord::Migration[5.2]
  def change
    create_table :bagmons do |t|
      t.string :description
      t.integer :force
      t.integer :agility
      t.string :icon
      t.string :category_id

      t.timestamps
    end
  end
end
