class CreateCounties < ActiveRecord::Migration
  def self.up
    create_table :counties do |t|
      t.string :name
      t.integer :state_id

      t.timestamps
    end
  end

  def self.down
    drop_table :counties
  end
end
