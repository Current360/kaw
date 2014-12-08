class UpdateBios < ActiveRecord::Migration
  def change
    add_column :bios, :first_name, :string
    add_column :bios, :last_name, :string
    add_column :bios, :real_title, :string
    add_column :bios, :funny_title, :string
    add_column :bios, :question1, :string
    add_column :bios, :question2, :string
    add_column :bios, :question3, :string
    add_column :bios, :question4, :string
    add_column :bios, :question5, :string
    add_column :bios, :answer1, :text
    add_column :bios, :answer2, :text
    add_column :bios, :answer3, :text
    add_column :bios, :answer4, :text
    add_column :bios, :answer5, :text
    add_column :bios, :bio_pic, :string
    add_column :bios, :overview, :text
  end
end
