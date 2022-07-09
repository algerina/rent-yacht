class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :city
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :cost

      t.timestamps
    end
  end
end
