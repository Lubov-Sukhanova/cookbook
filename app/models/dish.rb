class Dish < ActiveRecord::Base
  has_many :attachments, ->{ordering}, dependent: :destroy, inverse_of: :dish
  accepts_nested_attributes_for :attachments, allow_destroy: true

  has_many :components, dependent: :destroy
  accepts_nested_attributes_for :components, allow_destroy: true

  scope :ordering, ->{order(:name)}

  validates :name, presence: true
  validates :time_for_cook, presence: true
  validates :instructions, presence: true

  attr_reader :files

  def files=(val)
    val.each_with_index do |file, i|
      self.attachments.build(image: file, position: attachments.maximum(:position).to_i + i + 1)
    end
  end
end
