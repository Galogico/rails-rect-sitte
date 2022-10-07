class Pedido < ApplicationRecord
  belongs_to :comida

  validates :desc,:price, presence: true
  validates :desc,lenght: {maximum:500}
end
