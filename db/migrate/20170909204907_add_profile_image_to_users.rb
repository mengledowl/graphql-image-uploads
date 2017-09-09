class AddProfileImageToUsers < ActiveRecord::Migration[5.1]
  def up
    add_attachment :users, :profile_image
  end

  def down
    remove_attachment :users, :profile_image
  end
end
