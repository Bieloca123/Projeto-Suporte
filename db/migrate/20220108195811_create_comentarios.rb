class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.text :comentario
      t.integer :classificacao
      t.references :produto, foreign_key: true

      t.timestamps
    end
  end
end
