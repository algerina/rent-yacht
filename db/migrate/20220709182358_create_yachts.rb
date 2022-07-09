class CreateYachts < ActiveRecord::Migration[7.0]
  def change
    create_table :yachts do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
