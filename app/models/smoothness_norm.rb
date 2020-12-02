class SmoothnessNorm < ApplicationRecord
  has_many :g0s, class_name: 'Modulus'
  has_many :whts, class_name: 'Wht'
  has_many :khas, class_name: 'Kha'
  has_many :whv_maxes, class_name: 'WhvMax'
end
