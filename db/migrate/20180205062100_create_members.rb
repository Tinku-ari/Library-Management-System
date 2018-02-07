class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name, null: false, default: ""
      t.text :description, null: false, default: ""

      t.timestamps null: false
    end
  end
end
