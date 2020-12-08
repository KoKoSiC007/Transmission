class SigmaH < ApplicationRecord
  belongs_to :zh, class_name: 'Zh'
  belongs_to :zm, class_name: 'Zm'
  belongs_to :ze, class_name: 'Ze'
  belongs_to :wht, class_name: 'Wht'
  belongs_to :u, class_name: 'U'
  belongs_to :dw1, class_name: 'Dw1'

  def self.calc(zh, zm, ze, wht, u, dw1, delta, sigma_hp)
    value = zh.value * zm.value * ze.value * Math.sqrt(wht.value * (u.value + 1)/ (dw1.value * u.value))

    passed = (value - sigma_hp) < delta

    create(value: value, zh: zh, zm: zm, ze: ze, wht: wht, u: u, dw1: dw1, delta: delta, passed: passed)
  end
end
