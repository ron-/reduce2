class AddImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :password_digest, :string
  end
end
