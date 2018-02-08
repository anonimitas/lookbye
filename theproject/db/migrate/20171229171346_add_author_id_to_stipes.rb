class AddAuthorIdToStipes < ActiveRecord::Migration[5.0]
  def change
    add_column :stipes, :author_id, :integer
    add_index :stipes, :author_id
  end
end
