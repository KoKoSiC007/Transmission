class Ft < ApplicationRecord
  belongs_to :dw1, class_name: 'Dw1', dependent: :destroy

  has_many :khvs, dependent: :destroy
  has_many :whts, dependent: :destroy

  def self.calc(t1, dw1)
    dw1 = Dw1.find_or_create_by(value: dw1)

    value = 2 * 10**3 * t1 / dw1.value

    find_or_create_by(value: value, t1: t1, dw1: dw1)
  end
end
