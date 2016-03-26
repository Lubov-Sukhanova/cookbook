class Component < ActiveRecord::Base
  belongs_to :dish

  validates :dish, presence: true
  validates :amount, presence: true
  validates :measure_unit, presence: true
  validates :ingredient, presence: true
end
