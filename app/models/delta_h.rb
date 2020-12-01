class DeltaH < ApplicationRecord
  has_many :whvs, class_name: 'Whv'
end
