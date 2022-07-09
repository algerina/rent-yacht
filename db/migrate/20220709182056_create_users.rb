class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :role
      t.string :password
      t.string :profile_pic

      t.timestamps
    end
  end
end
