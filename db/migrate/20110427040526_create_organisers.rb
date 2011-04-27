class CreateOrganisers < ActiveRecord::Migration
  def self.up
    create_table :organisers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :street
      t.string :city
      t.integer :state_id
      t.string :zipcode

      t.timestamps
    end
  end

  def self.down
    drop_table :organisers
  end
end
