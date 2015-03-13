class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :time
      t.string :date
      t.integer :seats
      t.string :venue_name
      t.text :location
      t.text :other_info
      t.boolean :projector, default: false
      t.boolean :cables, default: false
      t.boolean :laptops, default: false
      t.boolean :seating, default: false
      t.boolean :blinds, default: false
      t.boolean :lighting, default: false
      t.boolean :camcorder, default: false
      t.boolean :catering, default: false
      t.boolean :toilets, default: false
      t.boolean :fire, default: false
      t.boolean :internet, default: false

      t.timestamps
    end
  end
end
