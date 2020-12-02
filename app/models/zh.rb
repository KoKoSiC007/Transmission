class Zh < ApplicationRecord
  belongs_to :b, class_name: 'B', optional: true
  belongs_to :offset_ratio, class_name: 'OffsetRatio', optional: true

  def self.calc(bb, atw)
    b = B.find_or_create_by(value: bb)
    offset = OffsetRatio.find_or_create_by(value: atw)

    zh = Zh.where(b: b, offset_ratio: offset).first

    return zh if zh.present?

    value = Math.sqrt(2 * Math.cos(b.value)/ Math.sin(2 * offset.value))

    create(value: value, b: b, offset_ratio: offset)
  end
end
