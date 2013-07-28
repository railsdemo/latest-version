class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.text :content
      t.date :version_date
      t.boolean :current

      t.timestamps
    end
  end
end
