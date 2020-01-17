class AddSlugToLessions < ActiveRecord::Migration[6.0]
  def change
    add_column :lessions, :slug, :string
    add_index :lessions, :slug, unique: true
  end
end
