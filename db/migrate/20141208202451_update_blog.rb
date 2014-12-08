class UpdateBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :content, :text
    add_column :blogs, :category, :integer
    add_column :blogs, :author, :integer
    add_column :blogs, :blog_picture, :string
    add_column :blogs, :slug, :string
  end
end
