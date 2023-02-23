class CreateBlogPost < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.string :comments, array: true, default: []

      t.timestamps
    end
  end
end
