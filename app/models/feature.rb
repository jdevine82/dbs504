class Feature < ActiveRecord::Base
    has_many :house_features
    has_many :houses, through: :house_features
end
