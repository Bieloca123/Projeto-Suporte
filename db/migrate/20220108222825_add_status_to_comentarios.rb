class AddStatusToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_column :comentarios, :status, :string
  end
end
