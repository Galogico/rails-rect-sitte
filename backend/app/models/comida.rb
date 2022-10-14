class Comida < ApplicationRecord
    has_many :pedidos, dependent: :destroy
    validates :typeC ,presence: true
    validates :typeC, uniqueness: true
    validates :typeC,length: {minimum: 0, maximum: 45}
end
