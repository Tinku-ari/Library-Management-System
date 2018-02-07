class CreateLends < ActiveRecord::Migration[5.1]
  def change
    create_table :lends do |t|
      t.integer :member_id, null: false
      t.string :book_code, null: false
      t.date :date_of_issue, null: false
      t.date :date_of_return, default: nil

      t.timestamps
    end
  end
end
