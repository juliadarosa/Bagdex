class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.string :description
      t.string :login
      t.string :senha

      t.timestamps
    end
  end
end
