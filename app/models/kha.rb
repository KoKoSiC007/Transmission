class Kha < ApplicationRecord
  belongs_to :smoothness_norm, class_name: 'SmoothnessNorm'
  belongs_to :v, class_name: 'V'

  has_many :khvs

  def calc(type, v, gost)
    if type == 1
      1
    else
      Kha.where(v: v, smoothness_norm_id: gost).take
    end
  end
end
