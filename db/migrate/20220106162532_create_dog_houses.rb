class CreateDogHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_houses do |t|
      t.string :address
      t.string :state
      t.integer :zipcode
      t.string :image_url
      t.text :short_description

      t.timestamps
    end
  end
end
