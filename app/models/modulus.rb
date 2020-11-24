class Modulus < ApplicationRecord
  has_many :g0s, class_name: 'G0'
  has_many :circumferential_forces, class_name: 'CircumferentialForce'
end
