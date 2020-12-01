class Eb < ApplicationRecord
  has_many :zms

  def calc(bw, b, modulus)
    value = bw * Math.sin(b / (Math.PI * modulus))

    create(value: value, bw: bw, b: b, modulus: modulus)
  end
end
