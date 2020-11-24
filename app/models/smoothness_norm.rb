class SmoothnessNorm < ApplicationRecord
  has_many :g0s, class_name: 'Modulus'
end
