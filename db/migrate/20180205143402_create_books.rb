class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :book_code, null: false
      t.string :title, null: false
      t.string :author, null: false, default: ""
      t.text :description, null: false, default: "", limit: 100
      t.string :genre

      t.timestamps
    end
  end
end
