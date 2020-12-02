class CalcController < ApplicationController

  def index
    @sigma_hs = SigmaH.all
  end

  def new; end

  def create
    zh = Zh.calc(params[:bb].to_f, params[:atw].to_f)
    zm = Zm.calc(params[:vp].to_f, params[:e1].to_f, params[:e2].to_f)
    ze = calc_ze
    p params
  end

  private

  def calc_ze
    ea = Ea.calc(params[:z1].to_i, params[:z2].to_i, params[:b].to_f)
    eb = Eb.calc(params[:bw].to_f, params[:b], params[:m].to_f)
    Ze.calc(ea, eb)
  end
end
