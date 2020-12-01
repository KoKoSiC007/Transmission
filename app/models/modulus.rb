class Modulus < ApplicationRecord
  has_many :g0s, class_name: 'G0'
  has_many :whts, class_name: 'Wht'
  has_many :ebs, class_name: 'Eb'
end
