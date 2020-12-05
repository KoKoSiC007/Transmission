class Kha < ApplicationRecord
  belongs_to :smoothness_norm, class_name: 'SmoothnessNorm', dependent: :destroy
  belongs_to :v, class_name: 'V', dependent: :destroy

  has_many :khvs, dependent: :destroy
  has_many :whts, dependent: :destroy

  def self.calc(type_id, v_id, gost_id)
    type = TransmissionType.find(type_id)
    if type.value == 'Прямозубая'
      build(value: 1, v_id: 0, smoothness_norm_id: 0)
    else
      Kha.where(v_id: v_id, smoothness_norm_id: gost_id).take
    end
  end
end
