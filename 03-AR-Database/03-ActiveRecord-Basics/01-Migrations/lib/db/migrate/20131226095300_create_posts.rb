class CreatePosts < ActiveRecord::Migration
  def change
    # TODO: your code here to create the posts table
    create_table :posts do |post|
      post.string :name
      post.string :source_url
      post.datetime :created_at
    end
  end
end
