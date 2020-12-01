class ToothAngle < ApplicationRecord
  has_many :zhs, class_name: 'Zh'
end
