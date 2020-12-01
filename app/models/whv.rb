class Whv < ApplicationRecord
  belongs_to :v, class_name: 'V'
  belongs_to :g0, class_name: 'G0'
  belongs_to :delta_h, class_name: 'DeltaH'
end
