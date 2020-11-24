class CircumferentialForce < ApplicationRecord
  belongs_to :modulus, class_name: 'Modulus'
  belongs_to :smoothness_norm, class_name: 'SmoothnessNorm'
end
