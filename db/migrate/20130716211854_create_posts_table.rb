class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :email
      t.decimal :price
      t.references :category

      t.timestamps
    end
  end
end
