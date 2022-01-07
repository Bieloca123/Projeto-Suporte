class Produto < ActiveRecord::Base
  enum classificacao: { 'Produto' => 0, 'Servico' => 1 }
  validates :nome, presence: true
  validates :descricao, presence: true, length: { minimum: 10 }
  validates :classificacao, presence: true
end
