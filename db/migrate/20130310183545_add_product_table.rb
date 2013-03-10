class AddProductTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text      :prod_image
      t.string    :prod_name
      t.string    :prod_type
      t.string    :upc
      t.text      :description
      t.string    :company_name
      t.string    :company_twitter
      t.integer   :votes, :default => 0
      t.integer   :num_tweets, :default => 0
      t.integer   :user_id
      t.timestamps
    end
  end
end
