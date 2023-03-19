class AddPersonTable < ActiveRecord::Migration[6.1]
  def up
    create_table :persons do |t|
      t.belongs_to :parent, foreign_key: { to_table: :persons }
      t.string  :name, null: false
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :persons
  end
end
