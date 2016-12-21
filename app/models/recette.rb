class Recette < ActiveRecord::Base
  has_many :ingredients
  has_many :instructions
  accepts_nested_attributes_for :ingredients,
    reject_if: proc { |attributes| attributes['nom'].blank? },
    allow_destroy: true
  accepts_nested_attributes_for :instructions,
    reject_if: proc { |attributes| attributes['etape'].blank? },
    allow_destroy: true
# On verifie que l'utilisateur ne laisse rien en blanc
  validates :titre, :description, :image, presence: true
 has_attached_file :image, styles: { :medium => "400x400#" }
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
