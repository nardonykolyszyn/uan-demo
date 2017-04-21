class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  resourcify
end
