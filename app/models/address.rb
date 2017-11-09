class Address < ActiveRecord::Base
  belongs_to :businesses, dependent: :destroy
  validates :latitude, presence: true
  validates :longitude, presence: true
end
