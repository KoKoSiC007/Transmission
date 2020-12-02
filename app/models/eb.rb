class Eb < ApplicationRecord
  belongs_to :b, class_name: 'B'

  has_many :zes

  def self.calc(bw, bb, modulus)
    b = B.find_or_create_by(value: bb)

    value = bw * Math.sin(b.value / (Math::PI * modulus))

    find_or_create_by(value: value, bw: bw, b: b, modulus: modulus)
  end
end
