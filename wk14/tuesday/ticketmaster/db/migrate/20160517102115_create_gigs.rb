class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.text :name
      t.references :artist, index: true, foreign_key: true
      t.references :venue, index: true, foreign_key: true
      t.decimal :price
      t.datetime :date

      t.timestamps null: false
    end
  end
end
