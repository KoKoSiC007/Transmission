class OffsetRatio < ApplicationRecord
  has_many :zhs, class_name: 'Zh'
end
