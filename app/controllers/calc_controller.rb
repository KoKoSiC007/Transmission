class CalcController < ApplicationController

  def index
    @sigma_hs = SigmaH.all
  end

  def new

  end
end
