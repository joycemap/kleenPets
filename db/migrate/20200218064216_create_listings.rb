class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.text :name
      t.string :phone
      t.text :address
      t.string :postal_code
      t.string :email
      t.text :description
      t.integer :price
      t.text :image_url
      t.boolean :home_service
      t.boolean :aggressive_pets_accepted

      t.timestamps
    end
  end
end
