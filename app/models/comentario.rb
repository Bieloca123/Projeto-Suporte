class Comentario < ApplicationRecord
  enum classificacao: { 'Like' => 0, 'Dislike' => 1 }
  belongs_to :produto
  has_many :comments
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  
  VALID_STATUSES = ['public', 'private', 'archived']
  
  validates :status, inclusion: { in: VALID_STATUSES }
  
  def archived?
    status == 'archived'
  end
end
