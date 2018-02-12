class House < ActiveRecord::Base
belongs_to :type
has_many :house_features, autosave: true
has_many :features, through: :house_features

    has_attached_file :photo, :styles => { :small => "150x150>" }, default_url: ""
                 
validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
validates :photo, presence: true
 validates :name, presence: true
   validates :name, length: { minimum: 2 }
   validates :name, length: { maximum: 20 }
   validates :name, uniqueness:{ case_sensitive: false }


   validates :name, length: { maximum: 200 }


end
