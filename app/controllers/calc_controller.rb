class CalcController < ApplicationController

  def index
    @sigma_hs = SigmaH.all
  end

  def new; end

  def create
    zh = Zh.calc(params[:bb].to_f, params[:atw].to_f)
    zm = Zm.calc(params[:vp].to_f, params[:e1].to_f, params[:e2].to_f)
    ze = calc_ze

    wht = calc_wht

    p SigmaH.calc(zh, zm, ze, wht, params[:u].to_f, params[:dw1].to_f)

    p params
  end

  private

  def calc_ze
    ea = Ea.calc(params[:z1].to_i, params[:z2].to_i, params[:b].to_f)
    eb = Eb.calc(params[:bw].to_f, params[:b], params[:m].to_f)
    Ze.calc(ea, eb)
  end

  def calc_wht
    ft = Ft.calc(params[:t1].to_f, params[:dw1].to_f)
    kha = Kha.calc(params[:transmission_type_id], params[:v], params[:smoothness_norm_id])
    khb = params[:khb].to_f
    khv = calc_khv(ft, kha, khb)

    Wht.calc(params[:bw].to_f, khb, kha, khv, ft)
  end

  def calc_khv(ft, kha, khb)
    delta_h = DeltaH.find_by(teeth_hardness_id: params[:teeth_hardness_id], tooth_type_id: params[:tooth_type_id])

    modulus = Modulus.find(params[:m].to_f)

    gost = SmoothnessNorm.find(params[:smoothness_norm_id])

    g0 = G0.find_by(modulus_id: modulus.id, smoothness_norm_id: gost.id)

    v = V.find(params[:v])

    whv = Whv.calc(delta_h, g0, v, params[:aw].to_f, params[:u].to_f, modulus, gost)

    Khv.calc(params[:bw].to_f, ft, kha, khb, whv)
  end
end
