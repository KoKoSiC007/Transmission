class ShapeMatingSurface < ApplicationRecord
  belongs_to :tooth_angle, class_name: 'ToothAngle', optional: true
  belongs_to :offset_ratio, class_name: 'OffsetRatio', optional: true

  def calc(bb, atw)
    Math.sqrt(2 * Math.cos(bb)/ Math.sin(2 * atw))
  end
end
