class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def calc
    raise NotImplementedError
  end
end
