class CalcController < ApplicationController

  def index
    @sigma_hs = SigmaH.all
  end

  def new; end

  def create
    p zh = Zh.calc(params[:bb].to_f, params[:atw].to_f)
    p params
  end
end
