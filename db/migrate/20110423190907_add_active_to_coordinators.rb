class AddActiveToCoordinators < ActiveRecord::Migration
  def self.up
    add_column :coordinators, :active, :boolean
  end

  def self.down
    remove_column :coordinators, :active
  end
end
