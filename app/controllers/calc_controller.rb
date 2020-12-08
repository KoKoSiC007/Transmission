class CalcController < ApplicationController

  def index
    @sigma_hs = SigmaH.all.includes(:dw1, :u, :wht, :zm, :ze, :zh)
  end

  def new; end

  def create
    zh = Zh.calc(params[:bb].to_f, params[:atw].to_f)
    zm = Zm.calc(params[:vp].to_f, params[:e1].to_f, params[:e2].to_f)
    ze = calc_ze

    wht = calc_wht

    u = U.find_or_create_by(value: params[:z2].to_f / params[:z1].to_f)

    dw1 = Dw1.find_or_create_by(value: params[:dw1].to_f)

    SigmaH.calc(zh, zm, ze, wht, u, dw1, params[:delta].to_f, params[:sigma_hp].to_f)

    redirect_to calc_index_path
  end

  def destroy
    SigmaH.find(params[:id]).destroy!

    redirect_to calc_index_path
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

    bw = Bw.find_or_create_by(value: params[:bw].to_f)

    Wht.calc(bw, khb, kha, khv, ft)
  end

  def calc_khv(ft, kha, khb)
    delta_h = DeltaH.find_by(teeth_hardness_id: params[:teeth_hardness_id], tooth_type_id: params[:tooth_type_id])

    modulus = Modulus.find(params[:m].to_f)

    gost = SmoothnessNorm.find(params[:smoothness_norm_id])

    g0 = G0.find_by(modulus_id: modulus.id, smoothness_norm_id: gost.id)

    v = V.find(params[:v])

    whv = Whv.calc(delta_h, g0, v, params[:aw].to_f, params[:z2].to_f / params[:z1].to_f, modulus, gost)

    bw = Bw.find_or_create_by(value: params[:bw].to_f)

    Khv.calc(bw, ft, kha, khb, whv)
  end
end
