class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, limit: 75, null: false 
      t.string :description, limit: 750, null: false
      t.datetime :date, null: false
      t.string :presenter, limit: 75, null: false
      t.string :degree, limit: 100
      t.boolean :is_english, null: false
      t.boolean :is_domestic, null: false
      t.boolean :is_common, null: false

      t.timestamps
    end
  end
end
