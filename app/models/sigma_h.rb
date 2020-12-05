class SigmaH < ApplicationRecord
  belongs_to :zh, class_name: 'Zh', dependent: :destroy
  belongs_to :zm, class_name: 'Zm', dependent: :destroy
  belongs_to :ze, class_name: 'Ze', dependent: :destroy
  belongs_to :wht, class_name: 'Wht', dependent: :destroy
  belongs_to :u, class_name: 'U', dependent: :destroy
  belongs_to :dw1, class_name: 'Dw1',dependent: :destroy

  def self.calc(zh, zm, ze, wht, u, dw1)
    value = zh.value * zm.value * ze.value * Math.sqrt(wht.value * (u.value + 1)/ (dw1.value * u.value))

    create(value: value, zh: zh, zm: zm, ze: ze, wht: wht, u: u, dw1: dw1)
  end
end
