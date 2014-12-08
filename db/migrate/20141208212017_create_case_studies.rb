class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.string :title
      t.text :challenge
      t.text :insight
      t.text :solution
      t.text :result
      t.text :quote
      t.string :client
      t.string :slider1
      t.string :slider2
      t.string :slider3
      t.string :slider4
      t.string :slider5
      t.string :inset1
      t.string :inset2
      t.string :inset3

      t.timestamps
    end
  end
end
