class AddUrlColumnToProductsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :url_id, :string
  end
end
