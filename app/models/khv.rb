class Khv < ApplicationRecord
  belongs_to :whv, class_name: 'Whv'
  belongs_to :kha, class_name: 'Kha'
  belongs_to :ft, class_name: 'Ft'


  def self.calc(bw, ft, kha, khb, whv)
    value = 1 + whv.value * bw / (ft.value * kha.value * khb)

    find_or_create_by(value: value, whv: whv, bw: bw, kha: kha, khb: khb, ft: ft)
  end
end
