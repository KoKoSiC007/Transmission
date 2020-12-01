class V < ApplicationRecord
  has_many :whvs, class_name: 'Whv'
  has_many :khas, class_name: 'Kha'
end
