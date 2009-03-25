class CreatePropertyValues < ActiveRecord::Migration
  def self.up
    create_table :property_values do |t|
      t.timestamps
      t.integer :property_id
      t.integer :position
      t.string :name
      t.string :presentation
    end
  end

  def self.down
    drop_table :property_values
  end
end
