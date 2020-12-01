class SmoothnessNorm < ApplicationRecord
  has_many :g0s, class_name: 'Modulus'
  has_many :circumferential_forces, class_name: 'CircumferentialForce'
  has_many :khas, class_name: 'Kha'
end
