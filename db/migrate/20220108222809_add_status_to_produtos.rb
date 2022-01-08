class AddStatusToProdutos < ActiveRecord::Migration[5.2]
  def change
    add_column :produtos, :status, :string
  end
end
