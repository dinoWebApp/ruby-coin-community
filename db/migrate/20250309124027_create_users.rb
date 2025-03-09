class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password

      t.timestamps
    end

    add_index :users, :user_name, unique: true
  end
end
