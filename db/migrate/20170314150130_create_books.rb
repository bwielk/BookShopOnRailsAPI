class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.references :author, index: true, foreign_key: true
      t.integer :price
      t.text :words

      t.timestamps null: false
    end
  end
end
