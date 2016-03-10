class Lift < ActiveRecord::Base

   has_many :reviews, as: :imageable
   belongs_to :owner, required: true

   mount_uploader :photo, PhotoUploader

   validates :name, uniqueness: true, presence: true
end


