class Comentario < ApplicationRecord
  enum classificacao: { 'Like' => 0, 'Dislike' => 1 }
  belongs_to :produto
end
