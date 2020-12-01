class Wht < ApplicationRecord
  belongs_to :modulus, class_name: 'Modulus'
  belongs_to :smoothness_norm, class_name: 'SmoothnessNorm'

  def calc( bw, gost, khb, modulus, kha, khv, ft)
    value = (ft / bw) * kha * khb * khv

    create(value: value, modulus: modulus, smoothness_norm: gost)
  end
end
