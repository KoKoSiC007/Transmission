class Modulus < ApplicationRecord
  has_many :g0s, class_name: 'G0'
  has_many :whts, class_name: 'Wht'
  has_many :ebs, class_name: 'Eb'
  has_many :whv_maxes, class_name: 'WhvMax'

  def self.find(value)
    if value <= 3.5
      find_by(value: "До 3.5")
    elsif 3.5 < value and value <= 10
      find_by(value: "Св. 3.5 до 10")
    elsif value > 10
      find_by(value: "Св. 10")
    end
  end
end
