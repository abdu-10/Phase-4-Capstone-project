class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :model
      t.string :reg_number
      t.string :cc
      t.string :location
      t.string :image_url
      t.integer :price
      t.integer :owner_id

      t.timestamps
    end
  end
end
