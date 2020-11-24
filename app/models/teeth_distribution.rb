class TeethDistribution < ApplicationRecord
  belongs_to :smoothness_norm, class_name: 'SmoothnessNorm'
end
