class Lift < ActiveRecord::Base
   has_many :reviews, as: :imageable
   belongs_to :owners, required: true

   validates :name, uniqueness: true, presence: true
end
