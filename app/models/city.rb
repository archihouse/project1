class City < ApplicationRecord
  belongs_to :house, :optional => true
  belongs_to :region, :optional => true   
end
