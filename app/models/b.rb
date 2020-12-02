class B < ApplicationRecord
  has_many :zhs, class_name: 'Zh'
  has_many :ebs, class_name: 'Eb'
  has_many :eas, class_name: 'Ea'
end
