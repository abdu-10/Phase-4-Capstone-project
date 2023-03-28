class CreateRiderBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :rider_bikes do |t|
      t.belongs_to :rider, null: false, foreign_key: true
      t.belongs_to :bike, null: false, foreign_key: true
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
