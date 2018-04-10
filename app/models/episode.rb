class Episode < ApplicationRecord
  belongs_to :anime
  has_many :links
end
