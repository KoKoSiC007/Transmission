class Ze < ApplicationRecord
  belongs_to :ea, class_name: 'Ea'
  belongs_to :eb, class_name: 'Eb'

  def calc(ea, eb)
    value = if eb < 0.9
              Math.sqrt((4 - ea) / 3)
            else
              Math.sqrt(1 / ea)
            end

    create(value: value, ea: ea, eb: eb)
  end
end
