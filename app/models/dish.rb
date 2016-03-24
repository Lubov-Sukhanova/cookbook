class Dish < ActiveRecord::Base
  has_many :attachments, ->{ordering}, dependent: :destroy, inverse_of: :dish

  scope :ordering, ->{order(:name)}

  validates :name, presence: true
  validates :time_for_cook, presence: true
  validates :instructions, presence: true
  validates :appliances_used, presence: true

  attr_reader :files

  def files=(val)
    val.each_with_index do |file, i|
      self.attachments.build(image: file, position: attachments.maximum(:position).to_i + i + 1)
    end
  end
end
