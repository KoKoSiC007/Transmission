class Wht < ApplicationRecord
  belongs_to :ft, class_name: 'Ft', dependent: :destroy
  belongs_to :kha, class_name: 'Kha', dependent: :destroy
  belongs_to :khv, class_name: 'Khv', dependent: :destroy
  belongs_to :bw, class_name: 'Bw', dependent: :destroy


  def self.calc(bw, khb, kha, khv, ft)
    value = (ft.value / bw.value) * kha.value * khb * khv.value

    find_or_create_by(value: value, ft: ft, kha: kha, khb: khb, khv: khv, bw: bw)
  end
end
