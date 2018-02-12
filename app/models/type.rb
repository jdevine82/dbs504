class Type < ActiveRecord::Base
    has_many :houses
    validates :typename, presence: true
   validates :typename, length: { minimum: 2 }
   validates :typename, length: { maximum: 20 }
   validates :typename, uniqueness:{ case_sensitive: false }

end
