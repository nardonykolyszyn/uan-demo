class Comment < ApplicationRecord
  belongs_to :user, :counter_cache => true
  belongs_to :notice
end
