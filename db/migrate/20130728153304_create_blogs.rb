class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :content
      t.date :blog_date

      t.timestamps
    end
  end
end
