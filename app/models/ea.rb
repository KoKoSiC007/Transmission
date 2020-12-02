class Ea < ApplicationRecord
  belongs_to :b, class_name: 'B'
  has_many :zes

  def self.calc(z1, z2, bb)
    b = B.find_or_create_by(value: bb)

    value = (1.88 - 3.2 * (1 / z1 + 1 / z2)) * Math.cos(b.value)

    find_or_create_by(value: value, z1: z1, z2: z2, b: b)
  end
end
