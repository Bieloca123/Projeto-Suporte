class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :codigo
      t.integer :classificacao, default: 0
      t.text :descricao

      t.timestamps
    end
  end
end
