class Eb < ApplicationRecord
  belongs_to :b, class_name: 'B'
  belongs_to :bw, class_name: 'Bw'

  has_many :zes

  def self.calc(bw, bb, modulus)
    bw = Bw.find_or_create_by(value: bw)

    b = B.find_or_create_by(value: bb)

    value = bw.value * Math.sin(b.value / (Math::PI * modulus))

    find_or_create_by(value: value, bw: bw, b: b, modulus: modulus)
  end
end
