class OffsetRatio < ApplicationRecord
  has_many :shape_mating_surfaces, class_name: 'ShapeMatingSurface'
end
