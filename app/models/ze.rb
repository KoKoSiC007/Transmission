class Ze < ApplicationRecord
  belongs_to :ea, class_name: 'Ea'
  belongs_to :eb, class_name: 'Eb'

  def self.calc(ea, eb)
    value = if eb.value < 0.9
              Math.sqrt((4 - ea.value) / 3)
            else
              Math.sqrt(1 / ea.value)
            end

    find_or_create_by(value: value, ea: ea, eb: eb)
  end
end
