class RemoveUrlidFromProductsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :url_id, :string 
    add_column :images, :product_id, :integer 
  end
end
