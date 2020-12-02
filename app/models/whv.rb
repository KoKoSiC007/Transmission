class Whv < ApplicationRecord
  belongs_to :v, class_name: 'V'
  belongs_to :g0, class_name: 'G0'
  belongs_to :delta_h, class_name: 'DeltaH'

  has_many :khvs

  def self.calc(delta_h, g0, v, aw, u, modulus, gost)
    value = delta_h.value * g0.value * v.value * Math.sqrt(aw/ u)

    whv_max = WhvMax.find_by(modulus: modulus, smoothness_norm: gost)

    value = whv_max.value if value > whv_max.value

    find_or_create_by(value: value, v: v, g0: g0, delta_h: delta_h, aw: aw, u: u)
  end
end
