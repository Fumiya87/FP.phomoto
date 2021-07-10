class Photo <
  belongs_to :post

  validates :image, presence: true
end
