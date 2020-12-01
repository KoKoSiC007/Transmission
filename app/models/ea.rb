class Ea < ApplicationRecord

  def calc(z1, z2, b)
    value = (1.88 - 3.2 * (1 / z1 + 1 / z2)) * Math.cos(b)

    create(value: value, z1: z1, z2: z2, b: b)
  end
end
