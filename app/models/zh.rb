class Zh < ApplicationRecord
  belongs_to :b, class_name: 'B', optional: true
  belongs_to :offset_ratio, class_name: 'OffsetRatio', optional: true

  has_many :sigma_hs

  def self.calc(bb, atw)
    b = B.find_or_create_by(value: bb)

    offset = OffsetRatio.find_or_create_by(value: atw)
    p bb, atw

    value = Math.sqrt(2 * Math.cos(b.value)/ Math.sin(2 * offset.value))

    find_or_create_by(value: value, b: b, offset_ratio: offset)
  end
end
