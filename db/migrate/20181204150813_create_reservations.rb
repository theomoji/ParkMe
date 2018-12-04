class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :listing, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
