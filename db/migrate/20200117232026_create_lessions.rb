class CreateLessions < ActiveRecord::Migration[6.0]
  def change
    create_table :lessions do |t|
      t.string :title, default: ""
      t.text :description, default: ""
      t.string :keywords, default: ""
      t.text :search_field, default: ""

      t.timestamps
    end
  end
end
