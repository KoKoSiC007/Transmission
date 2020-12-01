class Zm < ApplicationRecord

  def calc(vp, e1, e2)
    value = Math.sqrt((1/(Math.PI * (1 - vp*vp))) * (2 * e1 * e1 / (e1 + e2)))

    create(value: value, e1: e1, e2: e2, vp: vp)
  end
end

