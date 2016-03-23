class MeasureUnit < ActiveRecord::Base

    validates :standard_name, presence: true
    validates :nonstandard_name, presence: true
    validates :quantity_in_standard, presence: true
end
