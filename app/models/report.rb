class Report < ApplicationRecord
  belongs_to :team
  belongs_to :fixture
end
