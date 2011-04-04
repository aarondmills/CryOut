class CreateCoordinators < ActiveRecord::Migration
  def self.up
    create_table :coordinators do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :phone_home
      t.string :phone_mobile
      t.string :phone_work
      t.integer :state_id
      t.integer :county_id

      t.timestamps
    end
  end

  def self.down
    drop_table :coordinators
  end
end
