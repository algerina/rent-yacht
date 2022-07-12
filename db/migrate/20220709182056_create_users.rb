class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :role, default: 'user'
      t.string :password

      t.timestamps
    end
  end
end
