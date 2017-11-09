class Business < ActiveRecord::Base

  belongs_to :business_type

  acts_as_taggable_on :tags
  has_attached_file :cover, styles: {medium:"400x400", thumb:"200x200"}, default_url: "/images/missing.jpeg"

  belongs_to :address, dependent: :destroy
  accepts_nested_attributes_for :address

  validates :name, presence: true, uniqueness: true
  validates :slogan, presence: true
  validates :business_type_id, presence: true
  validates :description, presence: true, length:{minimum: 20}
  validates :tag_list, presence: true

  #Validacion de imagenes: requerida, expresion regular para imagenes, tamaño de 180 kb
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  #validates :username, format: {with: /regex/}
end
