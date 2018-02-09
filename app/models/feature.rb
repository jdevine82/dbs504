class Feature < ActiveRecord::Base
    has_many :houses
    has_many :houses, through: :house_features
end
