class Team < ApplicationRecord
  has_many :fixtures
  has_many :reports
  has_many :players
end
