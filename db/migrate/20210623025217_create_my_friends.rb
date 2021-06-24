class CreateMyFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :my_friends do |t|
      t.string :first_name, limit: 100, null: false
      t.string :last_name, limit: 100, null: false
      t.string :street
      t.string :zip_code, limit: 10
      t.string :city, null: false
      t.string :email, :unique =>  true, :limit => 45, null: false
      t.decimal :location_lat, precision: 35, scale: 15, default: 1.000000000000000
      t.decimal :location_lng, precision: 35, scale: 15, default: -1.000000000000000
      t.string :telephone
      t.string :mobile, null: false

      t.timestamps
    end
  end
end
