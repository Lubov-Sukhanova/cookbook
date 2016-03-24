class Ingredient < ActiveRecord::Base
  belongs_to :measure_unit

  scope :ordering, ->{order(:name)}

  validates :name, presence: true
end
