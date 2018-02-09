class HouseFeature < ActiveRecord::Base
    belongs_to :house
    belongs_to :feature
end
