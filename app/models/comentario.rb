class Comentario < ApplicationRecord
  enum classificacao: { 'Like' => 0, 'Dislike' => 1 }
  belongs_to :produto
  has_many :comentarios
 
  
  VALID_STATUSES = ['public', 'private', 'archived']
  
  validates :status, inclusion: { in: VALID_STATUSES }
  
  def archived?
    status == 'archived'
  end
end
