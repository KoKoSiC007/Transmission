class TeethDistribution < ApplicationRecord
  belongs_to :smoothness_norm, class_name: 'SmoothnessNorm'
  belongs_to :v, class_name: 'V'
end
