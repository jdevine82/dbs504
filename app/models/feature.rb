class Feature < ActiveRecord::Base
    has_many :house_features, autosave: true
    has_many :houses, through: :house_features

   validates :features, presence: true
   validates :features, length: { minimum: 2 }
   validates :features, length: { maximum: 50 }
   validates :features, uniqueness:{ case_sensitive: false }

end
