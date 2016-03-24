class Attachment < ActiveRecord::Base
  belongs_to :dish, inverse_of: :attachments

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :image, presence: true, content_type: { content_type: /\Aimage/ }, size: { in: 0..10.megabytes }
  validates :position, presence: true, numericality: {only_integer: true}, uniqueness: {scope: :dish}
  validates :dish, presence: true

  scope :ordering, ->{order(:position)}

  before_validation :set_default_position

  private

  def set_default_position
    if self.dish
      self.position ||=self.dish.attachments.maximum(:position).to_i + 1
    end
  end
end
