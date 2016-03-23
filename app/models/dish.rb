class Dish < ActiveRecord::Base

    validates :name, presence: true
    validates :time_for_cook, presence: true
    validates :instructions, presence: true
    validates :appliances_used, presence: true
end
