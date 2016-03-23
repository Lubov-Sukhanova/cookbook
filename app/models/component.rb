class Component < ActiveRecord::Base
  belongs_to :dish
  belongs_to :ingredient

  validates :dish, presence: true
  validates :amount, presence: true
  validates :units, presence: true
  validates :ingredient, presence: true
end
