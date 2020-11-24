class ShapeMatingSurface < ApplicationRecord
  belongs_to :tooth_angle, class_name: 'ToothAngle'
  belongs_to :offset_ratio, class_name: 'OffsetRatio'
end
