class CircumferentialForce < ApplicationRecord
  belongs_to :modulus, class_name: 'Modulus'
  belongs_to :smoothness_norm, class_name: 'SmoothnessNorm'

  def calc(t1, dw1, bw, type, gost, v, khb, teeth_hardness_id, tooth_type_id, module_id, aw, u)
    ft = calc_ft(t1, dw1)
    kha = calc_kha(type, v, gost)
    khv = calc_khv(bw, ft, kha, khb, tooth_type_id, teeth_hardness_id, module_id, gost, aw, v,u)

    create(value: (ft / bw) * kha * khb * khv, modulus_id: module_id, smoothness_norm: gost)
  end

  def calc_ft(t1, dw1)
    2 * 10**3 * t1 / dw1
  end

  def calc_kha(type, v, gost)
    if type == 1
      1
    else
      TeethDistribution.where(v: v, smoothness_norm_id: gost).take
    end
  end

  def calc_khv(bw, ft, kha, khb, type_id, hardness_id, modulus_id, gost_id, aw, v, u)
    whv = calc_whv(type_id, hardness_id, gost_id, modulus_id, aw, v, u)

    1 + whv * bw / (ft * kha * khb)
  end

  def calc_whv(type_id, hardness_id, gost_id, modulus_id, aw, v, u)
    deltaH = DeltaH.where(teeth_hardness_id: hardness_id, tooth_type_id: type_id).take

    g0 = G0.where(smoothness_norm_id: gost_id, modulus_id: modulus_id)

    deltaH * g0 * v * Math.sqrt(aw/ u)
  end
end
