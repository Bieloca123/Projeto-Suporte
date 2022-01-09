class Produto < ActiveRecord::Base
  enum classificacao: { 'Produto' => 0, 'Servico' => 1 }
  validates :nome, presence: true
  validates :descricao, presence: true, length: { minimum: 10 }
  validates :classificacao, presence: true
  
  has_many :comentarios, dependent: :destroy
  validates :comentario, presence: true, length: { minimum: 1 } 
  validates :classificacao, presence: true 
  
  VALID_STATUSES = ['public', 'private', 'archived']
  
  validates :status, inclusion: { in: VALID_STATUSES }
  
  def archived?
   status == 'archived'
  end
end
