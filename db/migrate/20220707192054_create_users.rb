class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :role, default: 'user'
      t.string :profile_pic
      t.string :username

      t.timestamps
    end
  end
end
