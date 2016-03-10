class Lift < ActiveRecord::Base
   belongs_to :user, required: true
   has_many :reviews, as: :imageable

   mount_uploader :photo, PhotoUploader

   validates :name, uniqueness: true, presence: true
end


