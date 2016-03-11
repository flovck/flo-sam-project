class Lift < ActiveRecord::Base
  belongs_to :user, required: true
  has_many :reviews, as: :imageable

  geocoded_by :address

  after_validation :geocode

  mount_uploader :photo, PhotoUploader

  validates :name, uniqueness: true, presence: true
end
