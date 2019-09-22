class Season < ApplicationRecord
  belongs_to :championship
  has_many :fixtures
end
