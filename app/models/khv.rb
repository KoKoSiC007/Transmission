class Khv < ApplicationRecord
  belongs_to :whv, class_name: 'Whv', dependent: :destroy
  belongs_to :kha, class_name: 'Kha', dependent: :destroy
  belongs_to :ft, class_name: 'Ft', dependent: :destroy
  belongs_to :wht, class_name: 'Wht',dependent: :destroy
  belongs_to :bw, class_name: 'Bw', dependent: :destroy


  def self.calc(bw, ft, kha, khb, whv)
    value = 1 + whv.value * bw.value / (ft.value * kha.value * khb)

    find_or_create_by(value: value, whv: whv, bw: bw, kha: kha, khb: khb, ft: ft)
  end
end
