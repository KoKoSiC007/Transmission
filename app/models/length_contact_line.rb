class LengthContactLine < ApplicationRecord

  def calc(bw, b, m, z1, z2)
    eb = calc_eb(bw, b, m)
    ea = calc_ea(z1, z2, b)
    value = if eb < 0.9
              Math.sqrt((4 - ea) / 3)
            else
              Math.sqrt(1 / ea)
            end
    create(value: value)
  end

  def calc_eb(bw, b, m)
    bw * Math.sin(b / (Math.PI * m))
  end

  def calc_ea(z1, z2, b)
    (1.88 - 3.2 * (1 / z1 + 1 / z2)) * Math.cos(b)
  end
end
