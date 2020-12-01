class Ft < ApplicationRecord
  has_many :khvs

  def calc(t1, dw1)
    value = 2 * 10**3 * t1 / dw1

    create(value: value, t1: t1, dw1: dw1)
  end
end
