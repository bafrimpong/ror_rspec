class RemoveLocationLatFromMyFriend < ActiveRecord::Migration[6.0]
  def change
    remove_column :my_friends, :location_lat, :decimal
    remove_column :my_friends, :location_lng, :decimal
    remove_column :my_friends, :telephone, :string
    remove_column :my_friends, :mobile, :string

    add_column :my_friends, :latitude, :decimal, :precision => 35, :scale => 15, :after => "email"
    add_column :my_friends, :longitude, :decimal, :precision => 35, :scale => 15, :after => "latitude"
    add_column :my_friends, :telephone, :string, :limit => 25, :after => "longitude"
    add_column("my_friends", "mobile", :string, limit: 30, :after => "telephone")
  end
end
