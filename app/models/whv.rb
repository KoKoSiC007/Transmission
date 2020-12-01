class Whv < ApplicationRecord
  belongs_to :v, class_name: 'V'
  belongs_to :g0, class_name: 'G0'
  belongs_to :delta_h, class_name: 'DeltaH'

  has_many :khvs

  def calc(delta_h, g0, v, aw, u)
    value = delta_h * g0 * v * Math.sqrt(aw/ u)

    create(value: value, v: v, g0: g0, delta_h: delta_h, aw: aw, u: u)
  end
end
