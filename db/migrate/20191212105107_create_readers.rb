class CreateReaders < ActiveRecord::Migration[6.0]
  def change
    create_table :readers do |t|
      t.string :name
      t.date :takedate
      t.date :returndate
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
