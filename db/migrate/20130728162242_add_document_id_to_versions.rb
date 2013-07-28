class AddDocumentIdToVersions < ActiveRecord::Migration
  def change
    add_column :versions, :document_id, :integer
  end
end
