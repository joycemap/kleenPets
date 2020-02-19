class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :body
      t.references :customer
      t.references :listing
      t.timestamps
    end
  end
end