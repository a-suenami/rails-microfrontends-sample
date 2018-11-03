class CreateProductServiceProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_service_products do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
