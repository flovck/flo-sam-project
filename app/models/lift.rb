class Lift < ActiveRecord::Base
   has_many :reviews, as: :imageable
end
