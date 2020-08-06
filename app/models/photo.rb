class Photo < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :owner,
             :class_name => "User",
             :counter_cache => true

  # Indirect associations

  has_many   :followers,
             :through => :owner,
             :source => :followers

  # Validations

  validates :image, :presence => true

  validates :owner_id, :presence => true

  # Scopes

  def to_s
    caption
  end

end
