class CreateMyFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :my_friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :email
      t.float :lat
      t.float :lng
      t.integer :telephone
      t.integer :mobile

      t.timestamps
    end
  end
end
