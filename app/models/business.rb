class Business < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :slogan, presence: true
  validates :description, presence: true, length:{minimum: 20}
  #validates :username, format: {with: /regex/}
end
