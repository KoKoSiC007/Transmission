class Ft < ApplicationRecord
  has_many :khvs
  has_many :whts

  def self.calc(t1, dw1)
    value = 2 * 10**3 * t1 / dw1

    find_or_create_by(value: value, t1: t1, dw1: dw1)
  end
end
