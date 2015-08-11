class CreateFriendsLists < ActiveRecord::Migration
  def change
    create_table :friends_lists do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
