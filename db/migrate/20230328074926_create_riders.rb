class CreateRiders < ActiveRecord::Migration[7.0]
  def change
    create_table :riders do |t|
      t.string :full_name
      t.string :username
      t.string :phone_number
      t.string :password_digest
      t.string :email
      t.string :licence_number
      t.string :date_of_birth
      t.string :spouse_contact
      t.string :id_number

      t.timestamps
    end
  end
end
