class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, limit: 75
      t.string :description, limit: 750
      t.datetime :date
      t.string :presenter, limit: 75
      t.string :degree, limit: 100
      t.boolean :is_english
      t.boolean :is_domestic
      t.boolean :is_common

      t.timestamps
    end
  end
end
