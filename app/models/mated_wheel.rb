class MatedWheel < ApplicationRecord

  def calc(v, e1, e2)
    create(value: Math.sqrt((1/(Math.PI * (1 - v*v))) * (2 * e1 * e1 / (e1 + e2))))
  end
end

