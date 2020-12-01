class V < ApplicationRecord
  has_many :whvs, class_name: 'Whv'
  has_many :teeth_distributions, class_name: 'TeethDistribution'
end
