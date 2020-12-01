class SigmaH < ApplicationRecord
  belongs_to :zh, class_name: 'Zh'
  belongs_to :zm, class_name: 'Zm'
  belongs_to :ze, class_name: 'Ze'
  belongs_to :wht, class_name: 'Wht'

  def calc(zh, zm, ze, wht, u, dw1)
    value = zh*zm*ze * Math.sqrt(wht * (u + 1)/ (dw1 * u))

    create(value: value, zh: zh, zm: zm, ze: ze, wht: wht, u: u, dw1: dw1)
  end
end
