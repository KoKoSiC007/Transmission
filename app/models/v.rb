class V < ApplicationRecord
  has_many :whvs, class_name: 'Whv'
  has_many :khvs, class_name: 'Khv'
end
