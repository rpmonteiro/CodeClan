class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.text :name
      t.text :location

      t.timestamps null: false
    end
  end
end
