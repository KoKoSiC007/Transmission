class LengthContactLine < ApplicationRecord
  belongs_to :ea, class_name: 'Ea'

  def calc(bw, b, m, ea)
    eb = calc_eb(bw, b, m)
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
end
