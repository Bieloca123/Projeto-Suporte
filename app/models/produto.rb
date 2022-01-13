class Produto < ActiveRecord::Base
  enum classificacao: { 'Produto' => 0, 'Servico' => 1 }

  validates :nome, presence: true
  validates :descricao, presence: true, length: { minimum: 10 }
  validates :classificacao, presence: true

  has_many :comentarios, dependent: :destroy

  enum status: {'Public' => 0, 'Private' => 1, 'Archived' => 2}
  
  def archived?
   status == 'archived'
  end
end
