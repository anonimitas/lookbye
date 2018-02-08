class CreateStipes < ActiveRecord::Migration[5.0]
  def change
    create_table :stipes do |t|
      t.string :title
      t.text :body
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :stipes, :slug, unique: true
  end
end
