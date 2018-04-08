class Episode < ApplicationRecord
  belongs_to :season
  has_many :links
end
