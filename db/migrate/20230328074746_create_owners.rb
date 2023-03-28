class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :full_name
      t.string :username
      t.string :phone_number
      t.string :password_digest

      t.timestamps
    end
  end
end
