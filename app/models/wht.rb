class Wht < ApplicationRecord
  belongs_to :ft, class_name: 'Ft'
  belongs_to :kha, class_name: 'Kha'
  belongs_to :khv, class_name: 'Khv'

  def self.calc(bw, khb, kha, khv, ft)
    value = (ft.value / bw) * kha.value * khb * khv.value

    find_or_create_by(value: value, ft: ft, kha: kha, khb: khb, khv: khv, bw: bw)
  end
end
